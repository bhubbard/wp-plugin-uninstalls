-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_vrp_options', 'cc_vrp_activate_flag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disableVRPOnPage', 'numberOfDisplayedPosts', 'customPostTypesToUse', 'checkedTypes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disableVRPOnPage', 'numberOfDisplayedPosts', 'customPostTypesToUse', 'checkedTypes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disableVRPOnPage', 'numberOfDisplayedPosts', 'customPostTypesToUse', 'checkedTypes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disableVRPOnPage', 'numberOfDisplayedPosts', 'customPostTypesToUse', 'checkedTypes');

