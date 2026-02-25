-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'woocommerce_email_footer_text', '_stellarpay_delete_all_data_on_delete', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_table_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%persisted_preferences';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%persisted_preferences';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%persisted_preferences';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%persisted_preferences';

