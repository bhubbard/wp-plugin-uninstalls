-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myofs_opt_expire', 'myofs_opt_data', 'woocommerce_api_enabled', 'active_sitewide_plugins', 'myofs_activation_redirect', 'myofs_db_version', 'myofs_db_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('myofs_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('myofs_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('myofs_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('myofs_category');

