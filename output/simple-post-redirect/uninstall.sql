-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('me_spr_post_redirect');
DELETE FROM wp_usermeta WHERE meta_key IN ('me_spr_post_redirect');
DELETE FROM wp_termmeta WHERE meta_key IN ('me_spr_post_redirect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('me_spr_post_redirect');

