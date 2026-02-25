-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tcbn_theme_color', 'tcbn_widget_position', 'tcbn_border_radius', 'tcbn_webhook_url');

