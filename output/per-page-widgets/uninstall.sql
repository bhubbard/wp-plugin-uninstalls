-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_i123_widgets_setting_overall');
DELETE FROM wp_usermeta WHERE meta_key IN ('_i123_widgets_setting_overall');
DELETE FROM wp_termmeta WHERE meta_key IN ('_i123_widgets_setting_overall');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_i123_widgets_setting_overall');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%';

