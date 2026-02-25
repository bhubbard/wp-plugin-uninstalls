-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sps_sidebar_page_switcher', 'sps_hierarchical_display', 'sps_trim_breaks', 'sps_minimum_user_level', 'sps_search_static_pages', 'sps_standard_separator', 'sps_list_archives', 'sps_date_prefix', 'sps_widget_archives');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sps_show_in_sidebar');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sps_show_in_sidebar');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sps_show_in_sidebar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sps_show_in_sidebar');

