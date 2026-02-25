-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flush-opcache-upgrade', 'flush-opcache-hide-button');

