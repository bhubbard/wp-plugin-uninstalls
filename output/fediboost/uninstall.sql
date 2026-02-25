-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fediboost_accounts', 'fediboost_activated', 'fediboost_instance_apps', 'fediboost_show_activitypub_notice');
DELETE FROM wp_options WHERE option_name LIKE 'fediboost_account_%';
DELETE FROM wp_options WHERE option_name LIKE 'fediboost_pending_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_activitypub_activity_type', '_activitypub_object_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_activitypub_activity_type', '_activitypub_object_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_activitypub_activity_type', '_activitypub_object_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_activitypub_activity_type', '_activitypub_object_id');

