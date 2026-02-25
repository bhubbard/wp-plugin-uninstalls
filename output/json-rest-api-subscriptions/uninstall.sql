-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jras_deleted_posts', 'jras_updated_posts', 'jras_created_posts', 'jras_notifier_lock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jras_events', 'jras_target', 'jras_signature', 'jras_content_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('jras_events', 'jras_target', 'jras_signature', 'jras_content_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('jras_events', 'jras_target', 'jras_signature', 'jras_content_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jras_events', 'jras_target', 'jras_signature', 'jras_content_type');

