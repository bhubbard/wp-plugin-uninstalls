-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xtmpay_merchant_id', 'xtmpay_licensekey', 'xtmlicensekey_type', 'tmpay_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'xvip');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'xvip');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'xvip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'xvip');

