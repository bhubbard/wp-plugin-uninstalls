-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('related_show', 'related_list', 'related_content', 'related_content_all', 'related_content_rss', 'related_content_title', 'related_content_extended', 'related_double_plugin', 'related_du_show', 'related_du_list', 'related_du_content', 'related_du_content_all', 'related_du_content_rss', 'related_du_content_title', 'related_du_content_extended');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('related_posts', 'related_du_posts', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('related_posts', 'related_du_posts', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('related_posts', 'related_du_posts', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('related_posts', 'related_du_posts', '_wp_attachment_image_alt');

