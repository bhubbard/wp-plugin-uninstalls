-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tecs_activation_redirect', 'ecs-show-link', 'ecs_activation_date', 'wisdom_last_track_time', 'wisdom_allow_tracking', 'wisdom_notification_times', 'wisdom_block_notice', 'wisdom_collect_email', 'wisdom_admin_emails', 'tecs_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tribe_featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tribe_featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tribe_featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tribe_featured');

