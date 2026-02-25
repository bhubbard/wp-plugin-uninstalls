-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gseasy_auto_link', 'gseasy_tooltip_enable', 'gseasy_tooltip_style', 'gseasy_index_layout', 'gseasy_custom_html', 'gseasy_permalink_slug', 'gseasy_enable_archive', 'gseasy_permalink_slug_old');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gseasy_term_schema');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gseasy_term_schema');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gseasy_term_schema');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gseasy_term_schema');

