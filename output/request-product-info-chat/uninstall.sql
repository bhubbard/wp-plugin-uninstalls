-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpic_phone', 'rpic_message', 'rpic_buttontext', 'rpic_enabled');

