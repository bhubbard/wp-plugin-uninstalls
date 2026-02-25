-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbtv_organization_id', 'wpbtv_api_key', 'wpbtv_auto_embed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpbtv_video_url', 'wpbtv_video_attachment_id', 'wpbtv_generation_requested', 'wpbtv_generation_error', 'wpbtv_video_source_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpbtv_video_url', 'wpbtv_video_attachment_id', 'wpbtv_generation_requested', 'wpbtv_generation_error', 'wpbtv_video_source_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpbtv_video_url', 'wpbtv_video_attachment_id', 'wpbtv_generation_requested', 'wpbtv_generation_error', 'wpbtv_video_source_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpbtv_video_url', 'wpbtv_video_attachment_id', 'wpbtv_generation_requested', 'wpbtv_generation_error', 'wpbtv_video_source_url');

