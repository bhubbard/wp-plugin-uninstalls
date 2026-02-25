-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('old_comment_cleaner_days_old', 'old_comment_cleaner_delete_email', 'old_comment_cleaner_delete_name', 'old_comment_cleaner_delete_url', 'old_comment_cleaner_confirm_delete', 'old_comment_cleaner_delete_old_comments_now');

