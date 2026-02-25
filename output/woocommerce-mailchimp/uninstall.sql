-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ss_wc_mailchimp_dismissed_notices', 'sswcmc_lists', 'sswcmc_list_web_ids', 'action_scheduler_admin_notice', 'as_comment_count');

