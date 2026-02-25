-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ljxp_skip_cats', 'ljxp_password', 'ljxp_host', 'ljxp_username', 'ljxp_custom_name_on', 'ljxp_custom_name', 'ljxp_privacy', 'ljxp_comments', 'ljxp_tag', 'ljxp_more', 'ljxp_community', 'ljxp_header_loc', 'ljxp_custom_header');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Alternate_Annonce', 'no_lj', 'ljxp_privacy', 'ljxp_comments', 'ljID');
DELETE FROM wp_usermeta WHERE meta_key IN ('Alternate_Annonce', 'no_lj', 'ljxp_privacy', 'ljxp_comments', 'ljID');
DELETE FROM wp_termmeta WHERE meta_key IN ('Alternate_Annonce', 'no_lj', 'ljxp_privacy', 'ljxp_comments', 'ljID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Alternate_Annonce', 'no_lj', 'ljxp_privacy', 'ljxp_comments', 'ljID');

