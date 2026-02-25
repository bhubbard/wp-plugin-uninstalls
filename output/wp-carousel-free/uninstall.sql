-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_wp_carousel_free_review_notice_dismiss', 'sp_wpcp_settings', '_wpcf_options', 'wp_carousel_free_version', 'wp_carousel_free_db_version', 'wpcp_page_data', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'spwpcp_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_wpcp_upload_options', 'sp_wpcp_shortcode_options', 'wpcplinking', 'crop_position', 'wpcplinktarget', '_wp_attachment_image_alt', 'wpcf_upload_options', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_wpcp_upload_options', 'sp_wpcp_shortcode_options', 'wpcplinking', 'crop_position', 'wpcplinktarget', '_wp_attachment_image_alt', 'wpcf_upload_options', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_wpcp_upload_options', 'sp_wpcp_shortcode_options', 'wpcplinking', 'crop_position', 'wpcplinktarget', '_wp_attachment_image_alt', 'wpcf_upload_options', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_wpcp_upload_options', 'sp_wpcp_shortcode_options', 'wpcplinking', 'crop_position', 'wpcplinktarget', '_wp_attachment_image_alt', 'wpcf_upload_options', '_elementor_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpcf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpcf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpcf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpcf_errors_%';

