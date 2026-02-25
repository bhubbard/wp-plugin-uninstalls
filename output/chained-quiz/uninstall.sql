-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chained_csv_delim', 'chained_csv_quotes', 'chained_integrations', 'chainedchimp_api_key', 'chainedchimp_no_optin', 'chained_ui', 'chained_facebook_appid', 'chained_linkedin', 'chained_twitter', 'chained_sender_name', 'chained_sender_email', 'chained_gdpr_ips', 'chained_text_captcha', 'chained_fixed_sort_order', 'chainedquiz_version', 'chained_admin_subject', 'chained_user_subject', 'chained_version', 'chained_debug_mode', 'chainedquiz_cleanup', 'chainedquiz_cleanup_db');

