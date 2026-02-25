-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsf_plugin_install_date', 'wpsf_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsf_hide_review_notice', '_wpsf_metabox_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsf_hide_review_notice', '_wpsf_metabox_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsf_hide_review_notice', '_wpsf_metabox_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsf_hide_review_notice', '_wpsf_metabox_details');

