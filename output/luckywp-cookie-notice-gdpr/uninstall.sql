-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwpcng_general', 'lwpcng_appearance', 'lwpcng_scripts', 'lwpcng_advanced', 'lwpcng_rate_time');

