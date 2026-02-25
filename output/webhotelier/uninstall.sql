-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-webhotelier_options', 'csf_demo_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

