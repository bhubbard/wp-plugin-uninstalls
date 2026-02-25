-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecn_pro_license_status', 'wisdom_last_track_time', 'wisdom_allow_tracking', 'wisdom_notification_times', 'wisdom_block_notice', 'wisdom_collect_email', 'wisdom_admin_emails');
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_EventTimezone', '_wp_attachment_image_alt', '_tribe_featured', '_EventHideFromUpcoming');
DELETE FROM wp_usermeta WHERE meta_key IN ('_EventTimezone', '_wp_attachment_image_alt', '_tribe_featured', '_EventHideFromUpcoming');
DELETE FROM wp_termmeta WHERE meta_key IN ('_EventTimezone', '_wp_attachment_image_alt', '_tribe_featured', '_EventHideFromUpcoming');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_EventTimezone', '_wp_attachment_image_alt', '_tribe_featured', '_EventHideFromUpcoming');

