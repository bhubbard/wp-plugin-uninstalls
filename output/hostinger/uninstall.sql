-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hostinger_woo_onboarding_choice', 'hostinger_reseller', 'active_sitewide_plugins', 'hostinger_hide_subpages', 'hostinger_newest_wordpress_version', 'hostinger_is_eligible_www_redirect', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'hostinger_%';

