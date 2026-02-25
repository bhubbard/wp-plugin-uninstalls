-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('masspost_debug_logs', 'masspost_api_token', 'masspost_api_user', 'masspost_websites', 'masspost_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('footnotes', '_masspost_selected_sites', '_masspost_errors', '_masspost_errors_time', '_masspost_content_hash', '_masspost_source_post_id', '_masspost_featured_src', '_masspost_synced_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('footnotes', '_masspost_selected_sites', '_masspost_errors', '_masspost_errors_time', '_masspost_content_hash', '_masspost_source_post_id', '_masspost_featured_src', '_masspost_synced_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('footnotes', '_masspost_selected_sites', '_masspost_errors', '_masspost_errors_time', '_masspost_content_hash', '_masspost_source_post_id', '_masspost_featured_src', '_masspost_synced_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('footnotes', '_masspost_selected_sites', '_masspost_errors', '_masspost_errors_time', '_masspost_content_hash', '_masspost_source_post_id', '_masspost_featured_src', '_masspost_synced_images');

