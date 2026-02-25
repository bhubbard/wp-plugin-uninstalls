-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_articlephoto_suppress', '_articlephoto_caption', '_articlephoto_url', '_articlephoto_filename');
DELETE FROM wp_usermeta WHERE meta_key IN ('_articlephoto_suppress', '_articlephoto_caption', '_articlephoto_url', '_articlephoto_filename');
DELETE FROM wp_termmeta WHERE meta_key IN ('_articlephoto_suppress', '_articlephoto_caption', '_articlephoto_url', '_articlephoto_filename');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_articlephoto_suppress', '_articlephoto_caption', '_articlephoto_url', '_articlephoto_filename');

