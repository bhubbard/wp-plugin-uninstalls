-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ach_processing_settings', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_transaction_id', '_achp_payment_source', '_achp_account_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_transaction_id', '_achp_payment_source', '_achp_account_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_transaction_id', '_achp_payment_source', '_achp_account_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_transaction_id', '_achp_payment_source', '_achp_account_type');

