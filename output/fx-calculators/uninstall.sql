-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fxcalc_activation_time', 'fxcalc_spare_me');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

