-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mapsvg_rewrite_flushed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mapsvg_location', '_wp_page_template', 'mapsvg_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('mapsvg_location', '_wp_page_template', 'mapsvg_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('mapsvg_location', '_wp_page_template', 'mapsvg_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mapsvg_location', '_wp_page_template', 'mapsvg_version');

