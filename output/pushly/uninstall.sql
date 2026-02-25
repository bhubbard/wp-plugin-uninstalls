-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushly', 'pushly_options', 'pushly_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pushly_needs_saving', 'pushly_send_notification', 'pushly_notification_id', 'pushly_customize_notification_content', 'pushly_custom_title', 'pushly_custom_body', 'pushly_customize_audience', 'pushly_audience_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('pushly_needs_saving', 'pushly_send_notification', 'pushly_notification_id', 'pushly_customize_notification_content', 'pushly_custom_title', 'pushly_custom_body', 'pushly_customize_audience', 'pushly_audience_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('pushly_needs_saving', 'pushly_send_notification', 'pushly_notification_id', 'pushly_customize_notification_content', 'pushly_custom_title', 'pushly_custom_body', 'pushly_customize_audience', 'pushly_audience_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pushly_needs_saving', 'pushly_send_notification', 'pushly_notification_id', 'pushly_customize_notification_content', 'pushly_custom_title', 'pushly_custom_body', 'pushly_customize_audience', 'pushly_audience_ids');

