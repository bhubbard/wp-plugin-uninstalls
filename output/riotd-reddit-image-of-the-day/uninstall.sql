-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_riotd_execution_before_image_processing', 'wp_riotd_settings');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

