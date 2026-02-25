-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_dismiss_feature_notice', 'sm_admin_notices', 'shortcode_list', 'sm_shortcode_package_list', 'sm_later', 'sm_vote');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sm_hide_shortcode_panel', 'sm_shortcode_atts');
DELETE FROM wp_usermeta WHERE meta_key IN ('sm_hide_shortcode_panel', 'sm_shortcode_atts');
DELETE FROM wp_termmeta WHERE meta_key IN ('sm_hide_shortcode_panel', 'sm_shortcode_atts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sm_hide_shortcode_panel', 'sm_shortcode_atts');

