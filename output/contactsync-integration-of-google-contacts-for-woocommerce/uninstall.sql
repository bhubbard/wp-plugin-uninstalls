-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contactsync_cron_processing', 'contactsync_access_token', 'contactsync_refresh_token', 'contactsync_token_expires_in', 'contactsync_user_email', 'contactsync_user_display_name', 'contactsync_current_batch_page', 'contactsync_auth_notice');

