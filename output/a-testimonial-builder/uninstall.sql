-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atbs_oauth_token', 'atbs_user_identity', 'atbs_guest_identity', 'atbs_flash_messages', 'atbs_is_logged_in', 'atbs_is_guest_logged_in', 'atbs_post_id', 'atbs_user_email');

