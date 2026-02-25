-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loginwiaz_cred_storage', 'loginwiaz_disable_password_login', 'loginwiaz_redirect_url_value', 'loginwiaz_client_id_value', 'loginwiaz_client_secret_value', 'loginwiaz_tenant_id_value');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

