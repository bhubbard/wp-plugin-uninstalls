-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wr4wc_plugin_options', 'p4wc_plugin_options', 'p4wc_db_version', 'p4wc_feed_hash', 'wr4wc_feed_hash');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_preferabli_label_checked_at', '_preferabli_label_url', '_wp_attached_file', '_wp_attachment_metadata', '_preferabli_label_expires_at', '_width', '_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_preferabli_label_checked_at', '_preferabli_label_url', '_wp_attached_file', '_wp_attachment_metadata', '_preferabli_label_expires_at', '_width', '_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_preferabli_label_checked_at', '_preferabli_label_url', '_wp_attached_file', '_wp_attachment_metadata', '_preferabli_label_expires_at', '_width', '_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_preferabli_label_checked_at', '_preferabli_label_url', '_wp_attached_file', '_wp_attachment_metadata', '_preferabli_label_expires_at', '_width', '_height');

