-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplp_settings', 'has_views_count_post_meta_key', '_wplp_onceLoad', 'wplp_category_image', 'ju_user_token');
DELETE FROM wp_options WHERE option_name LIKE '%_jureview_installation_time';
DELETE FROM wp_options WHERE option_name LIKE '%_jufeedback_version';
DELETE FROM wp_options WHERE option_name LIKE '%_disallow_feedback';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wplp_settings', '_wpcufpn_settings', '_elementor_data', '_wp_attachment_metadata', 'wplp_notice_dismissed_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wplp_settings', '_wpcufpn_settings', '_elementor_data', '_wp_attachment_metadata', 'wplp_notice_dismissed_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wplp_settings', '_wpcufpn_settings', '_elementor_data', '_wp_attachment_metadata', 'wplp_notice_dismissed_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wplp_settings', '_wpcufpn_settings', '_elementor_data', '_wp_attachment_metadata', 'wplp_notice_dismissed_time');

