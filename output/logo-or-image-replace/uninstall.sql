-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qc_lpp_selected_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qc_lpp_original_url', 'qc_lpp_replacing_image_url', 'qc_lpp_image_width', 'qc_lpp_image_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('qc_lpp_original_url', 'qc_lpp_replacing_image_url', 'qc_lpp_image_width', 'qc_lpp_image_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('qc_lpp_original_url', 'qc_lpp_replacing_image_url', 'qc_lpp_image_width', 'qc_lpp_image_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qc_lpp_original_url', 'qc_lpp_replacing_image_url', 'qc_lpp_image_width', 'qc_lpp_image_height');

