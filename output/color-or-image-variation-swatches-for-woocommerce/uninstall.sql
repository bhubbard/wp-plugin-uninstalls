-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_civs_version', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alg_wc_civs_term_color_color', 'alg_wc_civs_term_label_label', 'alg_wc_civs_term_image_image_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('alg_wc_civs_term_color_color', 'alg_wc_civs_term_label_label', 'alg_wc_civs_term_image_image_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('alg_wc_civs_term_color_color', 'alg_wc_civs_term_label_label', 'alg_wc_civs_term_image_image_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alg_wc_civs_term_color_color', 'alg_wc_civs_term_label_label', 'alg_wc_civs_term_image_image_id', '_wp_page_template');

