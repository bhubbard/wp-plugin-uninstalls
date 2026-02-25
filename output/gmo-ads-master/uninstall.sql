-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmoadsmaster_activation', 'gmoadsmaster_verification', 'gmoadsmaster_analytics', 'gmoadsmaster_adcodes');

