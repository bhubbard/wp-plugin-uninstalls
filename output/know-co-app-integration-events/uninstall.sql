-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('know__events__button_styles', 'know__events__button_classes', 'know__events__alert_container_styles', 'know__events__alert_container_classes', 'know__events__alert_heading_styles', 'know__events__alert_heading_classes', 'know__events__login_button_classes', 'know__events__login_button_styles', 'know__events__payment_process_button_classes', 'know__events__payment_process_button_styles', 'know--events--settings-group');

