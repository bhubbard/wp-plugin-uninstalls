-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('machete_disabled_modules', 'machete_cleanup_settings', 'machete_cookies_settings', 'machete_maintenance_settings', 'machete_powertools_settings', 'machete_social_settings', 'machete_utils_settings', 'machete_woocommerce_settings', 'machete_activation_welcome');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

