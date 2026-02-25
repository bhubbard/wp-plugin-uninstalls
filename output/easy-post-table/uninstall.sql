-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ept_show_month', '_ept_show_year', '_ept_filter_text', '_ept_post_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ept_show_month', '_ept_show_year', '_ept_filter_text', '_ept_post_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ept_show_month', '_ept_show_year', '_ept_filter_text', '_ept_post_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ept_show_month', '_ept_show_year', '_ept_filter_text', '_ept_post_per_page');

