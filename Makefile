.PHONY: _prompt decrypt encrypt

# Set the file you want to en/decrypt here.
# The example password is: !Q@W#E$R
CONF_FILE=config/settings.json

# 'private' task for echoing instructions
_prompt:
	@echo "Contact crypt_keeper@example.com for the password."

# decrypt/create conf/config.json
decrypt: _prompt
	openssl cast5-cbc -d -in ${CONF_FILE}.cast5 -out ${CONF_FILE}
	chmod 600 ${CONF_FILE}

# encrypt/update conf/config.json
encrypt: _prompt
	openssl cast5-cbc -e -in ${CONF_FILE} -out ${CONF_FILE}.cast5
