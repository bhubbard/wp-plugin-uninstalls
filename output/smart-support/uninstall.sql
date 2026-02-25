-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_support_shortcode_notice_shown', 'smart_support_general_settings', 'smart_support_user_management_settings', 'smart_support_installation_date', 'smart_support_last_review_action', 'smart_support_last_review_action_date', 'smart_support_agent_management_settings', 'smart_support_file_settings', 'smart_support_email_settings', 'smart_support_smtp_settings', 'smart_support_appearance_settings', 'smart_support_advanced_settings', 'smart_support_db_version', 'smart_support_flush_rewrite_rules', 'smart_support_version', 'smart_support_product_uids', 'smart_support_license_secret', 'smart_support_core_status_overrides', 'smart_support_page_id', 'smart_support_last_assigned_agent_id');
DELETE FROM wp_options WHERE option_name LIKE 'smart_support_role_warnings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smart_support_approved', 'smart_support_tickets_hidden_columns', 'smart_support_approved_date', 'smart_support_last_activity', 'first_name', 'phone', 'smart_support_agent_active', 'smart_support_approval_status', 'smart_support_rejection_reason', 'smart_support_hide_closed_tickets');
DELETE FROM wp_usermeta WHERE meta_key IN ('smart_support_approved', 'smart_support_tickets_hidden_columns', 'smart_support_approved_date', 'smart_support_last_activity', 'first_name', 'phone', 'smart_support_agent_active', 'smart_support_approval_status', 'smart_support_rejection_reason', 'smart_support_hide_closed_tickets');
DELETE FROM wp_termmeta WHERE meta_key IN ('smart_support_approved', 'smart_support_tickets_hidden_columns', 'smart_support_approved_date', 'smart_support_last_activity', 'first_name', 'phone', 'smart_support_agent_active', 'smart_support_approval_status', 'smart_support_rejection_reason', 'smart_support_hide_closed_tickets');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smart_support_approved', 'smart_support_tickets_hidden_columns', 'smart_support_approved_date', 'smart_support_last_activity', 'first_name', 'phone', 'smart_support_agent_active', 'smart_support_approval_status', 'smart_support_rejection_reason', 'smart_support_hide_closed_tickets');

