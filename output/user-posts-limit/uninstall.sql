-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upl_rules_count', 'upl_message', 'upl_notice', 'upl_priority', 'upl_manage_cap', 'upl_user_role', 'upl_posts_type', 'upl_num_limit', 'upl_period', 'add_new_users', 'upl_site_rules_count', 'upl_site_user_role', 'upl_site_posts_type', 'upl_site_num_limit', 'upl_site_period');

