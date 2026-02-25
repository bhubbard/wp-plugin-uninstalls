-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmtst_plugin_missing_notice_hide');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'client_name', 'email', 'star_rating', 'nofollow', 'noopener', 'noreferrer', 'wpmtst_old_et_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'client_name', 'email', 'star_rating', 'nofollow', 'noopener', 'noreferrer', 'wpmtst_old_et_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'client_name', 'email', 'star_rating', 'nofollow', 'noopener', 'noreferrer', 'wpmtst_old_et_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'client_name', 'email', 'star_rating', 'nofollow', 'noopener', 'noreferrer', 'wpmtst_old_et_id');

