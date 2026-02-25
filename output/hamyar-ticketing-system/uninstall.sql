-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hamyar_page', 'hamyar_date', 'hamyar_jquery', 'hamyar_ticket_settings');

