-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('email_marketing_agile_domain', 'email_marketing_agile_email', 'email_marketing_agile_rest_api', 'email_marketing_agile_password', 'email_marketing_agile_webstats', 'email_marketing_agile_webrules', 'email_marketing_agile_js_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email_marketing_landing_page', 'email_marketing_enable_webrule', 'email_marketing_enable_webstats');
DELETE FROM wp_usermeta WHERE meta_key IN ('email_marketing_landing_page', 'email_marketing_enable_webrule', 'email_marketing_enable_webstats');
DELETE FROM wp_termmeta WHERE meta_key IN ('email_marketing_landing_page', 'email_marketing_enable_webrule', 'email_marketing_enable_webstats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email_marketing_landing_page', 'email_marketing_enable_webrule', 'email_marketing_enable_webstats');

