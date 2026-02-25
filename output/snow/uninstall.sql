-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snow', 'snowadvanced', 'snowtechnical', 'snow_intro_general', 'snow_intro_advanced', 'snow_intro_technical', 'snow_hello');
DELETE FROM wp_options WHERE option_name LIKE 'snow_%';

