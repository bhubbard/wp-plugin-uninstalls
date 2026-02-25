-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_cpt_support');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_was_wp_org';
DELETE FROM wp_options WHERE option_name LIKE '%_previous_version';
DELETE FROM wp_options WHERE option_name LIKE '%_previous_was_wp_org';

