-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcs_base_domain', 'mcs_default_city_id', 'mcs_seo_mode', 'mcs_country_choose_enabled', 'mcs_province_choose_enabled', 'mcs_ask_mode', 'mcs_redirect_next_visits', 'mcs_log_enabled', 'mcs_debug_enabled', 'mcs_default_location_id', 'mcs_default_location_type');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

