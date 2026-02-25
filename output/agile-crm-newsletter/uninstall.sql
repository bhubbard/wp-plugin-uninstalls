-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter_agile_domain', 'newsletter_agile_email', 'newsletter_agile_rest_api', 'newsletter_agile_password', 'newsletter_agile_webstats', 'newsletter_agile_webrules', 'newsletter_agile_js_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('newsletter_landing_page', 'newsletter_enable_webrule', 'newsletter_enable_webstats');
DELETE FROM wp_usermeta WHERE meta_key IN ('newsletter_landing_page', 'newsletter_enable_webrule', 'newsletter_enable_webstats');
DELETE FROM wp_termmeta WHERE meta_key IN ('newsletter_landing_page', 'newsletter_enable_webrule', 'newsletter_enable_webstats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('newsletter_landing_page', 'newsletter_enable_webrule', 'newsletter_enable_webstats');

