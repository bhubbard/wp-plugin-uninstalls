-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BEM_JUST_INSTALLED', 'BEM_CONNECTION_USER_ID', 'bem_redirect_url', 'BEM_CONNECTION_DEACTIVATE_USER_ID', 'bem_woo_sms_optin_status', 'BEM_CONNECTION_STATUS');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_capabilities');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_capabilities');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_capabilities');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_capabilities');

