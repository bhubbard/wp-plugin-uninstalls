-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ticketscandy_do_activation_redirect', 'tickets_candy_options');

