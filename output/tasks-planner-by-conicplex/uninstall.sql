-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tpcp_notification_read_status', '_tpcp_assign_to', '_tpcp_notification_for_user', '_tpcp_due_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tpcp_notification_read_status', '_tpcp_assign_to', '_tpcp_notification_for_user', '_tpcp_due_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tpcp_notification_read_status', '_tpcp_assign_to', '_tpcp_notification_for_user', '_tpcp_due_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tpcp_notification_read_status', '_tpcp_assign_to', '_tpcp_notification_for_user', '_tpcp_due_date');

