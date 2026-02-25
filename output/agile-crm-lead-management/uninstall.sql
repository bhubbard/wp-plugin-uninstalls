-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agile_domain', 'agile_email', 'agile_rest_api', 'agile_password', 'agile_webstats', 'agile_webrules', 'agile_js_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('landing_page', 'enable_webrule', 'enable_webstats');
DELETE FROM wp_usermeta WHERE meta_key IN ('landing_page', 'enable_webrule', 'enable_webstats');
DELETE FROM wp_termmeta WHERE meta_key IN ('landing_page', 'enable_webrule', 'enable_webstats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('landing_page', 'enable_webrule', 'enable_webstats');

