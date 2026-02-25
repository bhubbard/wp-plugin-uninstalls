-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themeidol_options', 'themeidol-recent-posts', 'themeidol_pointers');
DELETE FROM wp_options WHERE option_name LIKE 'themeidol-instagm-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themeidol_tab_widget_ignore_notice', '_themeidol_view_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('themeidol_tab_widget_ignore_notice', '_themeidol_view_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('themeidol_tab_widget_ignore_notice', '_themeidol_view_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themeidol_tab_widget_ignore_notice', '_themeidol_view_count');

