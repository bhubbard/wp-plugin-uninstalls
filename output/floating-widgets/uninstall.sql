-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floating_widgets_appreciation', 'floating_widgets_mode', 'floating_widgets_before_widget', 'floating_widgets_after_widget', 'floating_widgets_before_title', 'floating_widgets_after_title', 'floating_widgets_title_size', 'floating_widgets_title_color', 'floating_widgets_posts', 'floating_widgets_before_section', 'floating_widgets_after_section', 'floating_widgets_before_content', 'floating_widgets_after_content', 'floating_widget_float', 'floating_widget_width', 'floating_widget_padding', 'floating_widget_margin', 'floating_widget_border_width', 'floating_widget_border_style', 'floating_widget_border_color', 'floating_widgets_pages');
DELETE FROM wp_options WHERE option_name LIKE 'floating_widgets_custom_%';

