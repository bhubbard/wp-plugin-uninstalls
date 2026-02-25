-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resizeer_process_on_upload', 'resizeer_max_width', 'resizeer_max_height', 'resizeer_quality', 'resizeer_process_uploads_automatically');

