-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpb_sdk_under-construction-maintenance-mode', '_ucmm_optin', 'ucmm_active_time', 'ucmm_review_dismiss', 'ucmm_wpbrigade_setting', 'ucmm_wpbrigade_customization', 'active_sitewide_plugins', 'wpb_sdk_module_id', 'wpb_sdk_module_slug', 'wpb_api_cache', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%';

