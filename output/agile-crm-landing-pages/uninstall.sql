-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('landing_pages_agile_domain', 'landing_pages_agile_email', 'landing_pages_agile_rest_api', 'landing_pages_agile_password', 'landing_pages_agile_webstats', 'landing_pages_agile_webrules', 'landing_pages_agile_js_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('landing_pages_landing_page', 'landing_pages_enable_webrule', 'landing_pages_enable_webstats');
DELETE FROM wp_usermeta WHERE meta_key IN ('landing_pages_landing_page', 'landing_pages_enable_webrule', 'landing_pages_enable_webstats');
DELETE FROM wp_termmeta WHERE meta_key IN ('landing_pages_landing_page', 'landing_pages_enable_webrule', 'landing_pages_enable_webstats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('landing_pages_landing_page', 'landing_pages_enable_webrule', 'landing_pages_enable_webstats');

