-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tf_display_admin_notice_time', 'beafwc_installation_date', 'beafwc_review_notice_status');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('beafwc_before_image', 'beafwc_after_image', 'beafwc_image_styles', 'beafwc_default_offset', 'beafwc_before_label', 'beafwc_after_label', 'beafwc_no_overlay', 'beafwc_move_slider_on_hover', 'beafwc_click_to_move', 'beafwc_on_scroll_slide', 'skip_lazy_load', 'beafwc_custom_color', 'beafwc_before_label_background', 'beafwc_before_label_color', 'beafwc_after_label_background', 'beafwc_after_label_color', 'beafwc_activate_slider', 'beafwc_before_after_style', 'beafwc_slider_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('beafwc_before_image', 'beafwc_after_image', 'beafwc_image_styles', 'beafwc_default_offset', 'beafwc_before_label', 'beafwc_after_label', 'beafwc_no_overlay', 'beafwc_move_slider_on_hover', 'beafwc_click_to_move', 'beafwc_on_scroll_slide', 'skip_lazy_load', 'beafwc_custom_color', 'beafwc_before_label_background', 'beafwc_before_label_color', 'beafwc_after_label_background', 'beafwc_after_label_color', 'beafwc_activate_slider', 'beafwc_before_after_style', 'beafwc_slider_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('beafwc_before_image', 'beafwc_after_image', 'beafwc_image_styles', 'beafwc_default_offset', 'beafwc_before_label', 'beafwc_after_label', 'beafwc_no_overlay', 'beafwc_move_slider_on_hover', 'beafwc_click_to_move', 'beafwc_on_scroll_slide', 'skip_lazy_load', 'beafwc_custom_color', 'beafwc_before_label_background', 'beafwc_before_label_color', 'beafwc_after_label_background', 'beafwc_after_label_color', 'beafwc_activate_slider', 'beafwc_before_after_style', 'beafwc_slider_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('beafwc_before_image', 'beafwc_after_image', 'beafwc_image_styles', 'beafwc_default_offset', 'beafwc_before_label', 'beafwc_after_label', 'beafwc_no_overlay', 'beafwc_move_slider_on_hover', 'beafwc_click_to_move', 'beafwc_on_scroll_slide', 'skip_lazy_load', 'beafwc_custom_color', 'beafwc_before_label_background', 'beafwc_before_label_color', 'beafwc_after_label_background', 'beafwc_after_label_color', 'beafwc_activate_slider', 'beafwc_before_after_style', 'beafwc_slider_title');

