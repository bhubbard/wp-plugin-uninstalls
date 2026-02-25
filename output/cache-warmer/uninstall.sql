-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cache-warmer-updating', 'cache-warmer-last-delete-external-warmer-logs', 'cache-warmer-intervals-scheduling-post-activation-handled', 'cache-warmer-setting-user-agent', 'cache-warmer-setting-user-agents', 'cache-warmer-setting-for-how-many-days-to-keep-the-logs', 'cache-warmer-setting-depth', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-license-key%';
DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-key-validation-endpoint-last-response-code%';
DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-key-validation-endpoint-last-response-body%';
DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-servers-to-use%';
DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-interval%';

