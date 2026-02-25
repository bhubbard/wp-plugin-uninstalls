-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('st_hide_title_check_option', 'st_hide_breadcrumb_check_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('st_hide_title_check_option', 'st_hide_breadcrumb_check_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('st_hide_title_check_option', 'st_hide_breadcrumb_check_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('st_hide_title_check_option', 'st_hide_breadcrumb_check_option');

