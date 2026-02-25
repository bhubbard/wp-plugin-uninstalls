-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('downloaded_font_files', 'fresh_site', 'twentig-options', 'twentig_global_spacing', '_twentig_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt');

