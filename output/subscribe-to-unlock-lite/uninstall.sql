-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stul_plugin_install_date', 'stul_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stul_hide_review_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('stul_hide_review_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('stul_hide_review_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stul_hide_review_notice');

