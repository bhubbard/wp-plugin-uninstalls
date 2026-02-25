-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'lfc_posts_to_update', 'lfc-saved-widgets', 'lfc_old_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'is_lfc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'is_lfc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'is_lfc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'is_lfc');

