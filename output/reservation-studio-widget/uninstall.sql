-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rs_widget_version', 'rs_widget_enabled', 'rs_widget_page_type', 'rs_widget_slug', 'rs_widget_language', 'rs_widget_sticky_button_enabled', 'rs_widget_sticky_button_text', 'rs_widget_sticky_button_text_color', 'rs_widget_sticky_button_Background_color', 'rs_widget_sticky_button_position', 'rs_widget_sticky_tooltip_text', 'rs_widget_sticky_tooltip_show_delay', 'rs_widget_sticky_tooltip_expire_time', 'rs_widget_buttons_selector', 'rs_widget_modal_max_width', 'rs_widget_modal_max_height');
DELETE FROM wp_options WHERE option_name LIKE 'rs_widget_%';

