-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chrssen_enabled', 'chrssen_trigger_class', 'chrssen_heading', 'chrssen_message', 'chrssen_proceed_text', 'chrssen_cancel_text', 'chrssen_display_external_link', 'chrssen_custom_popup_enabled', 'chrssen_custom_popup_class', 'chrssen_custom_popup_heading', 'chrssen_custom_popup_message', 'chrssen_custom_popup_proceed', 'chrssen_custom_popup_cancel', 'chrssen_header_bg_color', 'chrssen_header_text_color', 'chrssen_body_bg_color', 'chrssen_body_text_color', 'chrssen_proceed_bg_color', 'chrssen_proceed_text_color', 'chrssen_cancel_bg_color', 'chrssen_cancel_text_color', 'chrssen_overlay_opacity', 'chrssen_modal_width', 'chrssen_animation_style', 'chrssen_custom_css', 'chrssen_delay_enabled', 'chrssen_delay_seconds', 'chrssen_remember_enabled', 'chrssen_remember_duration', 'chrssen_link_icon_enabled', 'chrssen_link_icon_position', 'chrssen_exception_classes', 'chrssen_whitelisted_domains', 'chrssen_excluded_pages', 'chrssen_exception_class');
DELETE FROM wp_options WHERE option_name LIKE 'chrssen_%';

