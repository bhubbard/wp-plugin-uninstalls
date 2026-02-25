-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yews_settings', 'yews_cron_setup', 'yews_footer_credits', 'gdlr_general', 'yews_analytics_code', 'yews_phone_code', 'yews_phoneno_code', 'yews_remarketing_code', 'yews_codes', 'yews_seo', 'yews_checks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yews_business_name', 'yews_business_phone', 'yews_business_street_address', 'yews_business_suburb', 'yews_business_state', 'yews_business_post_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('yews_business_name', 'yews_business_phone', 'yews_business_street_address', 'yews_business_suburb', 'yews_business_state', 'yews_business_post_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('yews_business_name', 'yews_business_phone', 'yews_business_street_address', 'yews_business_suburb', 'yews_business_state', 'yews_business_post_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yews_business_name', 'yews_business_phone', 'yews_business_street_address', 'yews_business_suburb', 'yews_business_state', 'yews_business_post_code');

