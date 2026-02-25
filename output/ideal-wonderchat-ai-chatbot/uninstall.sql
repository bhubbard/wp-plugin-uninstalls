-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ideal_widget_data_id', 'ideal_widget_size', 'ideal_widget_button_size', 'ideal_widget_offset_bottom', 'ideal_widget_offset_right', 'ideal_widget_lazy_loading', 'ideal_disable_posts', 'ideal_display_admin');

