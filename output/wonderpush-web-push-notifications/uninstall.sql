-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderpush.last_send_time', 'WonderPushSettings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wonderpush_send_notification', 'wonderpush_send_notification_delay_seconds', 'wonderpush_target_segment_ids', 'wonderpush_target_segment_id', 'wonderpush_target_tags', 'wonderpush_meta_box_present');
DELETE FROM wp_usermeta WHERE meta_key IN ('wonderpush_send_notification', 'wonderpush_send_notification_delay_seconds', 'wonderpush_target_segment_ids', 'wonderpush_target_segment_id', 'wonderpush_target_tags', 'wonderpush_meta_box_present');
DELETE FROM wp_termmeta WHERE meta_key IN ('wonderpush_send_notification', 'wonderpush_send_notification_delay_seconds', 'wonderpush_target_segment_ids', 'wonderpush_target_segment_id', 'wonderpush_target_tags', 'wonderpush_meta_box_present');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wonderpush_send_notification', 'wonderpush_send_notification_delay_seconds', 'wonderpush_target_segment_ids', 'wonderpush_target_segment_id', 'wonderpush_target_tags', 'wonderpush_meta_box_present');

