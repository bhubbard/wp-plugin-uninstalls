-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns-airport-transfers-admin-email', 'ns-airport-transfers-contact-email', 'ns-airport-transfers-contact-phone', 'ns-airport-transfers-country', 'ns-airport-transfers-resort', 'ns-airport-transfers-time-format');

