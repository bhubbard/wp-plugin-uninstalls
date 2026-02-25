-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kiwi_backup_option', 'kiwi_general_settings', 'kiwi_settings', 'kiwi_network_colors');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_short_link_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_share_count_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_css_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_license_message';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kiwi_social-media-pinterest-image', 'kiwi_social-media-pinterest-description', 'kiwi_social-media-title', 'kiwi_social-media-description', 'kiwi_social-media-image', 'kiwi_social-media-custom-tweet', 'kiwi_shortcode_networks', 'kiwi_shortcode_bar_style', 'kiwi_shortcode_list_item_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('kiwi_social-media-pinterest-image', 'kiwi_social-media-pinterest-description', 'kiwi_social-media-title', 'kiwi_social-media-description', 'kiwi_social-media-image', 'kiwi_social-media-custom-tweet', 'kiwi_shortcode_networks', 'kiwi_shortcode_bar_style', 'kiwi_shortcode_list_item_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('kiwi_social-media-pinterest-image', 'kiwi_social-media-pinterest-description', 'kiwi_social-media-title', 'kiwi_social-media-description', 'kiwi_social-media-image', 'kiwi_social-media-custom-tweet', 'kiwi_shortcode_networks', 'kiwi_shortcode_bar_style', 'kiwi_shortcode_list_item_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kiwi_social-media-pinterest-image', 'kiwi_social-media-pinterest-description', 'kiwi_social-media-title', 'kiwi_social-media-description', 'kiwi_social-media-image', 'kiwi_social-media-custom-tweet', 'kiwi_shortcode_networks', 'kiwi_shortcode_bar_style', 'kiwi_shortcode_list_item_style');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

