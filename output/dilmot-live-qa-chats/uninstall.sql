-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stream_info_box_html', 'stream_html', 'stream_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('stream_info_box_html', 'stream_html', 'stream_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('stream_info_box_html', 'stream_html', 'stream_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stream_info_box_html', 'stream_html', 'stream_status');

