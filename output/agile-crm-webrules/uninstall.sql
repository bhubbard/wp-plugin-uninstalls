-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webrules_agile_domain', 'webrules_agile_email', 'webrules_agile_rest_api', 'webrules_agile_password', 'webrules_agile_webstats', 'webrules_agile_webrules', 'webrules_agile_js_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webrules_landing_page', 'webrules_enable_webrule', 'webrules_enable_webstats');
DELETE FROM wp_usermeta WHERE meta_key IN ('webrules_landing_page', 'webrules_enable_webrule', 'webrules_enable_webstats');
DELETE FROM wp_termmeta WHERE meta_key IN ('webrules_landing_page', 'webrules_enable_webrule', 'webrules_enable_webstats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webrules_landing_page', 'webrules_enable_webrule', 'webrules_enable_webstats');

