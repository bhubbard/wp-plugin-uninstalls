-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hreflang_tags_mgmt_settings_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hreflang_tags_mgmt_meta_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('hreflang_tags_mgmt_meta_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('hreflang_tags_mgmt_meta_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hreflang_tags_mgmt_meta_data');

