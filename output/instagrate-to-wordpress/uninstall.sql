-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itw_username', 'itw_userid', 'itw_manuallstid', 'itw_accesstoken', 'itw_accesstoken_expires', 'itw_version', 'itw_imagelink', 'itw_debugmode', 'itw_imagesave', 'itw_imagefeat', 'itw_post_date', 'itw_postformat', 'itw_poststatus', 'itw_posttype', 'itw_defaulttitle', 'itw_ishome', 'itw_last_run', 'itw_configured', 'itw_imagesize', 'itw_imageclass', 'itw_postcats', 'itw_postauthor', 'itw_customtitle', 'itw_customtext', 'itw_pluginlink', 'itw_posting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('instagrate_id', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('instagrate_id', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('instagrate_id', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('instagrate_id', '_thumbnail_id');

