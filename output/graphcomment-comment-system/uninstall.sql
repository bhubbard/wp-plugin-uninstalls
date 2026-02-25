-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gc-msg', 'gc_sync_comments', 'gc-sync-error', 'gc_create_website', 'gc_sync_interval', 'gc_sync_last_success', 'gc_api_public_key', 'gc_api_private_key', 'gc_import_date_begin', 'gc_import_date_end', 'gc_import_total', 'gc_import_nbr_comment_import', 'gc_public_key', 'gc_notif_comments', 'gc_website_id', 'gc-notif-error', 'graphcomment-disconnect', 'gc_oauth_client_key', 'gc_oauth_client_secret', 'gc_oauth_client_token', 'gc_oauth_client_code', 'gc_activated', 'gc_activated_all', 'gc_activated_from', 'gc_seo_activated', 'gc_sso_activated', 'gc_overlay_activated', 'gc_overlay_visible', 'gc_overlay_bubble', 'gc_overlay_button_label', 'gc_overlay_width', 'gc_overlay_fixed_header_height', 'gc_overlay_button_color', 'gc_overlay_button_background', 'gc_readonly_activated', 'gc_readonly_who', 'gc_readonly_roles', 'gc_debug_activated', 'gc_change_website', 'Activated_Plugin', 'gc-import-error');
DELETE FROM wp_options WHERE option_name LIKE '%status_stopped';
DELETE FROM wp_options WHERE option_name LIKE '%status';
DELETE FROM wp_options WHERE option_name LIKE '%error_msg';
DELETE FROM wp_options WHERE option_name LIKE '%batch_number';
DELETE FROM wp_options WHERE option_name LIKE '%total';
DELETE FROM wp_options WHERE option_name LIKE '%nbr_comment_import';
DELETE FROM wp_options WHERE option_name LIKE '%date_begin';
DELETE FROM wp_options WHERE option_name LIKE '%date_end';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname');

