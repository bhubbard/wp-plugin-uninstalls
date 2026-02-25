-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bss-facebook', 'bss-twitter', 'bss-whatsapp', 'bss-tumblr', 'bss-telegram', 'bss-pinterest', 'bss-googleplus', 'bss-linkedin');

