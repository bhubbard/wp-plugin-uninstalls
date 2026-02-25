-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notix_error_notices', 'notix_tag_notify_feature_enabled_setting', 'notix_auto_send_feature_enabled_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('notix_push_sended', 'notix_send_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('notix_push_sended', 'notix_send_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('notix_push_sended', 'notix_send_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('notix_push_sended', 'notix_send_checkbox');

