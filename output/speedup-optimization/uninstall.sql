-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iox_settings', 'speedup01_image_optimizer', 'speedup01_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'iox_bulk_optimize_result_%';

