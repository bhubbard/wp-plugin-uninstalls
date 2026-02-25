-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('robber_baron_tv_connected', 'robber_baron_tv_email_address', 'robber_baron_tv_user_id');

