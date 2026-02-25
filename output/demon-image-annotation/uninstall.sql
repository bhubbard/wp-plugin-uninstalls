-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('demon_image_annotation_display', 'demon_image_annotation_comments', 'demon_image_annotation_postcontainer', 'demon_image_annotation_admin', 'demon_image_annotation_autoresize', 'demon_image_annotation_numbering', 'demon_image_annotation_clickable_text', 'demon_image_annotation_mouseoverdesc', 'demon_image_annotation_maxlength', 'demon_image_annotation_linkoption', 'demon_image_annotation_linkdesc', 'demon_image_annotation_thumbnail', 'demon_image_annotation_pluginver', 'demon_image_annotation_autoimageid', 'demon_image_annotation_autoapprove', 'demon_image_annotation_gravatar', 'demon_image_annotation_gravatar_deafult', 'demon_image_annotation_everypage');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dia_admin_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('dia_admin_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('dia_admin_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dia_admin_ignore_notice');

