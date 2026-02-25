-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wavinai_search_30_days_total_clicks', 'wavinai_search_top_clicks', 'wavinai_search_top_searches', 'wavinai_search_30_days_total_searches', 'wavinai_search_30_days_non_empty_searches', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%categories';
DELETE FROM wp_options WHERE option_name LIKE '%brands';
DELETE FROM wp_options WHERE option_name LIKE '%attributes';

