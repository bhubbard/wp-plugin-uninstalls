-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dazz_pb_b_review', 'wpsm_progressbar_wp_default_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('progressbar_wp_Shortcode_Settings', 'progressbar_wp_data', 'progressbar_wp_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('progressbar_wp_Shortcode_Settings', 'progressbar_wp_data', 'progressbar_wp_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('progressbar_wp_Shortcode_Settings', 'progressbar_wp_data', 'progressbar_wp_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('progressbar_wp_Shortcode_Settings', 'progressbar_wp_data', 'progressbar_wp_count');

