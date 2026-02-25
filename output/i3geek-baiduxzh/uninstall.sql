-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('I3GEEK_XZH_SETTING', 'I3GEEK_XZH_NOTICE', 'I3GEEK_XZH_SUBMITNUMBER', 'I3GEEK_XZH_MSG_STATUS', 'I3GEEK_XZH_MSG_CONTENT', 'I3GEEK_XZH_LOG_WRITABLE', 'I3GEEK_XZH_UPDATE_FLAG');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('i3geek_xzh_submit');
DELETE FROM wp_usermeta WHERE meta_key IN ('i3geek_xzh_submit');
DELETE FROM wp_termmeta WHERE meta_key IN ('i3geek_xzh_submit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('i3geek_xzh_submit');

