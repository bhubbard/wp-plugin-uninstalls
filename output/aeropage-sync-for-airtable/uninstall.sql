-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aero_token', 'aero_sync_status', 'aero_sync_time', 'aero_sync_message', 'aero_connection', 'aero_page_id', 'aero_website_id', '_aero_cpt', '_aero_id', 'aero_auto_sync', 'aero_post_status', 'aero_mapped_post_type', 'aero_mapped_post_meta_fields', 'aero_sync_fields', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('aero_token', 'aero_sync_status', 'aero_sync_time', 'aero_sync_message', 'aero_connection', 'aero_page_id', 'aero_website_id', '_aero_cpt', '_aero_id', 'aero_auto_sync', 'aero_post_status', 'aero_mapped_post_type', 'aero_mapped_post_meta_fields', 'aero_sync_fields', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('aero_token', 'aero_sync_status', 'aero_sync_time', 'aero_sync_message', 'aero_connection', 'aero_page_id', 'aero_website_id', '_aero_cpt', '_aero_id', 'aero_auto_sync', 'aero_post_status', 'aero_mapped_post_type', 'aero_mapped_post_meta_fields', 'aero_sync_fields', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aero_token', 'aero_sync_status', 'aero_sync_time', 'aero_sync_message', 'aero_connection', 'aero_page_id', 'aero_website_id', '_aero_cpt', '_aero_id', 'aero_auto_sync', 'aero_post_status', 'aero_mapped_post_type', 'aero_mapped_post_meta_fields', 'aero_sync_fields', '_thumbnail_id');

