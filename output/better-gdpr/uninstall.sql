-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bettergdpr_xtoken', 'bettergdpr_subdomain', 'privacybunker_subdomain', 'bettergdpr_sitekey', 'woocommerce_enable_myaccount_registration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_export_file_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_export_file_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_export_file_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_export_file_url');

