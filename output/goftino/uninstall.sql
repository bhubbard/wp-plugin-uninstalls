-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goftino_widget_type', 'goftino_send_userdata', 'goftino_widget_id', 'error_goftino');

