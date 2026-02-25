-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('es_repo_url', 'es_privateKey', 'es_appID', 'es_guest_option', 'es_guest_id', 'es_auth_key', 'es_repo_host', 'es_publicKey', 'es_repo_public_key', 'es_repo_port', 'es_repo_clientPort', 'es_repo_domain', 'es_repo_authenticationwebservice_wsdl', 'es_repo_usagewebservice_wsdl', 'es_repo_protocol', 'es_repo_version', 'es_auth_userid', 'es_auth_lastname', 'es_auth_firstname', 'es_auth_mail', 'es_auth_affiliation', 'es_auth_affiliation_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('es_repo_ticket', 'es_repo_domain', 'es_plugin_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('es_repo_ticket', 'es_repo_domain', 'es_plugin_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('es_repo_ticket', 'es_repo_domain', 'es_plugin_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('es_repo_ticket', 'es_repo_domain', 'es_plugin_url');

