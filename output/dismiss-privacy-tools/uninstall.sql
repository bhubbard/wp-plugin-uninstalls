-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_comments_cookies_opt_in', '_wp_privacy_text_change_check', '_wp_suggested_policy_text_has_changed');

