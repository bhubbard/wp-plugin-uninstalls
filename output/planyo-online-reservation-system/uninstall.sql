-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_id', 'extra_search_fields', 'sort_fields', 'planyo_language', 'default_mode', 'seo_friendly', 'use_login', 'login_integration_code', 'resource_ordering', 'js_framework');

