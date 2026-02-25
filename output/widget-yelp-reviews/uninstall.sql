-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yrw_active', 'yrw_api_key', 'yrw_activation_time', 'yrw_is_multisite', 'yrw_version', 'yrw_rev_notice_hide', 'rplg_rev_notice_show', 'yrw_language');
DELETE FROM wp_options WHERE option_name LIKE 'yrw_refresh_reviews_%';

