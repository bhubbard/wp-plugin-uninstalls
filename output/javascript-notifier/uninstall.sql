-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('javascript_notifier_settings', 'javascript_notifier_message', 'javascript_notifier_block', 'javascript_notifier_fg_color', 'javascript_notifier_bg_color', 'javascript_notifier_font_size', 'javascript_notifier_opacity', 'javascript_notifier_custom_css');

