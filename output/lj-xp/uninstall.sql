-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ljxp', 'ljxp_username', 'ljxp_error_notice', 'lj_xp_error_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ljxp_privacy', 'ljxp_friendsgroups', 'ljxp_comments', 'ljxp_userpic', 'no_lj', 'ljID', 'ljURL', 'ljxp_cut_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('ljxp_privacy', 'ljxp_friendsgroups', 'ljxp_comments', 'ljxp_userpic', 'no_lj', 'ljID', 'ljURL', 'ljxp_cut_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('ljxp_privacy', 'ljxp_friendsgroups', 'ljxp_comments', 'ljxp_userpic', 'no_lj', 'ljID', 'ljURL', 'ljxp_cut_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ljxp_privacy', 'ljxp_friendsgroups', 'ljxp_comments', 'ljxp_userpic', 'no_lj', 'ljID', 'ljURL', 'ljxp_cut_text');

