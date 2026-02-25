-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_menu_add_warning_migrate', 'sp_menu_course_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_menu_add_warning_migrate', 'sp_menu_course_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_menu_add_warning_migrate', 'sp_menu_course_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_menu_add_warning_migrate', 'sp_menu_course_ignore_notice');

