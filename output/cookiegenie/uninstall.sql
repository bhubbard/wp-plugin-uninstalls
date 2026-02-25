-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cg_enabled', 'cg_blacklist', 'cg_whitelist', 'cg_bck_color', 'cg_scn_color', 'cg_cookietitle', 'cg_cookietext', 'cg_cookiedeclaration', 'cg_expire', 'cg_ad_storage', 'cg_ad_user_data', 'cg_ad_personalization', 'cg_analytics_storage', 'cg_api_key');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

