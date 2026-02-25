-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ibbac_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ibbac_meta_box_optout_before', '_ibbac_meta_box_optout_after');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ibbac_meta_box_optout_before', '_ibbac_meta_box_optout_after');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ibbac_meta_box_optout_before', '_ibbac_meta_box_optout_after');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ibbac_meta_box_optout_before', '_ibbac_meta_box_optout_after');

