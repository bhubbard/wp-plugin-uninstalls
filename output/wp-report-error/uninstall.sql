-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WRPErrors_email_option', 'WRPErrors_hide_icon', 'WRPErrors_email', 'WRPErrors_message', 'WRPErrors_code', 'WRPErrors_subject', 'wordpress_api_key', 'akismet_spam_count');

