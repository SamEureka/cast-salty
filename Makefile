.PHONY: _pwd_prompt decrypt_conf encrypt_conf

CONF_FILE=config/settings.json

# 'private' task for echoing instructions
_pwd_prompt:
	@echo "Contact foo@example.com for the password."

# to create conf/config.json
decrypt_conf: _pwd_prompt
	openssl cast5-cbc -d -in ${CONF_FILE}.cast5 -out ${CONF_FILE}
	chmod 600 ${CONF_FILE}

# for updating conf/config.json
encrypt_conf: _pwd_prompt
	openssl cast5-cbc -e -in ${CONF_FILE} -out ${CONF_FILE}.cast5
