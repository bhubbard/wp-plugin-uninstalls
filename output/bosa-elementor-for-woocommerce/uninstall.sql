-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bew_activation_time', 'bew_remind_me_later_time', 'bew_maybe_later_time', 'default_product_cat');
DELETE FROM wp_options WHERE option_name LIKE 'bew_upgrade_notice_dismiss_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismiss_bew_upgrade_notice', 'dismiss_bew_rating_notice', 'dismiss_bew_rating_top_notice', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_location', '_elementor_conditions', '_wp_page_template', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismiss_bew_upgrade_notice', 'dismiss_bew_rating_notice', 'dismiss_bew_rating_top_notice', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_location', '_elementor_conditions', '_wp_page_template', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismiss_bew_upgrade_notice', 'dismiss_bew_rating_notice', 'dismiss_bew_rating_top_notice', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_location', '_elementor_conditions', '_wp_page_template', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismiss_bew_upgrade_notice', 'dismiss_bew_rating_notice', 'dismiss_bew_rating_top_notice', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_location', '_elementor_conditions', '_wp_page_template', '_wp_attachment_image_alt', 'thumbnail_id');

