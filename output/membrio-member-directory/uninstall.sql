-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_medir_member_email', '_medir_message', '_medir_sender_email', '_medir_sender_name', '_medir_first_name', '_medir_last_name', '_medir_email', '_medir_assigned_teams', '_medir_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_medir_member_email', '_medir_message', '_medir_sender_email', '_medir_sender_name', '_medir_first_name', '_medir_last_name', '_medir_email', '_medir_assigned_teams', '_medir_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_medir_member_email', '_medir_message', '_medir_sender_email', '_medir_sender_name', '_medir_first_name', '_medir_last_name', '_medir_email', '_medir_assigned_teams', '_medir_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_medir_member_email', '_medir_message', '_medir_sender_email', '_medir_sender_name', '_medir_first_name', '_medir_last_name', '_medir_email', '_medir_assigned_teams', '_medir_status');

