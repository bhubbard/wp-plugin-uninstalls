-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('forms_agile_domain', 'forms_agile_email', 'forms_agile_rest_api', 'forms_agile_password', 'forms_agile_webstats', 'forms_agile_webrules', 'forms_agile_js_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('forms_landing_page', 'forms_enable_webrule', 'forms_enable_webstats');
DELETE FROM wp_usermeta WHERE meta_key IN ('forms_landing_page', 'forms_enable_webrule', 'forms_enable_webstats');
DELETE FROM wp_termmeta WHERE meta_key IN ('forms_landing_page', 'forms_enable_webrule', 'forms_enable_webstats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('forms_landing_page', 'forms_enable_webrule', 'forms_enable_webstats');

