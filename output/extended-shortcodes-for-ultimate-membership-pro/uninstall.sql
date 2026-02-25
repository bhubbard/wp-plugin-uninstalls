-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ihc_levels', 'ihc_general_login_default_page', 'ihc_general_user_page', 'ihc_general_lost_pass_page', 'ihc_general_register_default_page', 'ihc_subscription_plan_page');
DELETE FROM wp_options WHERE option_name LIKE '%-enabled';

