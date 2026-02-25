-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('png_to_jpg_settings', 'wpseo_total_unindexed_post_type_archives', 'wpseo_total_unindexed_general_items', 'wpseo_total_unindexed_posts', 'wpseo_total_unindexed_terms', 'wpseo_unindexed_post_link_count', 'wpseo_unindexed_term_link_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('png_converted', '_wp_attached_file', 'transparency', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('png_converted', '_wp_attached_file', 'transparency', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('png_converted', '_wp_attached_file', 'transparency', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('png_converted', '_wp_attached_file', 'transparency', '_wp_attachment_metadata');

