-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hsfyt_application_key', 'hsfyt_application_secret', 'hsfyt_access_token', 'hsfyt_access_token_secret', 'hsfyt_user_screenname');

