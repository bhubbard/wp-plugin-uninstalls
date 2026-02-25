-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lightbox_alerts_days', 'border_color', 'background_color', 'header_color', 'email_address_color', 'lb_link_color');

