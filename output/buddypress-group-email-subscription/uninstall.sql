-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_name', 'ass_digest_time', 'ass_weekly_digest', 'ass-global-unsubscribe-link', 'ass_activity_frequency_ass_registered_req', 'ass-admin-can-edit-email', 'ass-admin-can-send-email');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_activity_id', '_ges_digest_queue_migrated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_activity_id', '_ges_digest_queue_migrated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_activity_id', '_ges_digest_queue_migrated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_activity_id', '_ges_digest_queue_migrated');

