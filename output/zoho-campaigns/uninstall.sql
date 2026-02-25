-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zcwc_connect_time', 'zcwc_rated', 'zcwc_domname', 'zcwc_integration', 'zcwc_optin_setting', 'zcwc_store_stats', 'zcwc_intergration_details', 'zcwc_error_msg', 'zcwc_wc_token', 'zcwc_token_details', 'zcwc_user', 'zcwc_user_email', 'zcwc_script', 'zcwc_script_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zcwc_newsletter_subscription');
DELETE FROM wp_usermeta WHERE meta_key IN ('zcwc_newsletter_subscription');
DELETE FROM wp_termmeta WHERE meta_key IN ('zcwc_newsletter_subscription');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zcwc_newsletter_subscription');

