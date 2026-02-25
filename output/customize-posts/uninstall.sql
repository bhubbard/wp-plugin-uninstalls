-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_preview_changeset_uuid', '_edit_last', '_wp_desired_post_slug', '_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_preview_changeset_uuid', '_edit_last', '_wp_desired_post_slug', '_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_preview_changeset_uuid', '_edit_last', '_wp_desired_post_slug', '_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_preview_changeset_uuid', '_edit_last', '_wp_desired_post_slug', '_wp_trash_meta_status', '_wp_trash_meta_time');

