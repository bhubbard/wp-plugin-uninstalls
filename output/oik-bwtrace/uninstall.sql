-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bw_summary_options', 'bw_trace_options', 'bw_trace_files_options', 'bw_action_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bw_image_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bw_image_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bw_image_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bw_image_link');

