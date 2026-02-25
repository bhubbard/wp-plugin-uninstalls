-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderplugin_slider_usepostsave', 'wonderplugin_slider_addextrabackslash', 'wonderplugin_slider_supportmultilingual', 'wonderplugin_slider_userrole', 'wonderplugin_slider_keepdata', 'wonderplugin_slider_disableupdate', 'wonderplugin_slider_supportwidget', 'wonderplugin_slider_addjstofooter', 'wonderplugin_slider_jsonstripcslash', 'wonderplugin_slider_thumbnailsize', 'wonderplugin_slider_jetpackdisablelazyload', 'wonderplugin_slider_information');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'total_sales');

