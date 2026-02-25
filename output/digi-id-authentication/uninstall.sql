-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digiid_plugin_version', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('digiid_addr');
DELETE FROM wp_usermeta WHERE meta_key IN ('digiid_addr');
DELETE FROM wp_termmeta WHERE meta_key IN ('digiid_addr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('digiid_addr');

