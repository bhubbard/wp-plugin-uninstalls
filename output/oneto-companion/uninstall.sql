-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oneto_sync_needed', 'fresh_site_activate', 'widget_archives', 'widget_search', 'sidebars_widgets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_page_template');

