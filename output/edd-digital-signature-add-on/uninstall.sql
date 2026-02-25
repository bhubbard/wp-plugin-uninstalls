-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remove_rating_widget_EDD', 'esign_edd_agreement_setting', 'esign_edd_sad_page', '_esign_edd_redirect', 'esig-edd-shortcode-view');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_esig_edd_meta_product_agreement', '_esig_edd_meta_sad_page', '_esign_edd_sign_logic');
DELETE FROM wp_usermeta WHERE meta_key IN ('_esig_edd_meta_product_agreement', '_esig_edd_meta_sad_page', '_esign_edd_sign_logic');
DELETE FROM wp_termmeta WHERE meta_key IN ('_esig_edd_meta_product_agreement', '_esig_edd_meta_sad_page', '_esign_edd_sign_logic');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_esig_edd_meta_product_agreement', '_esig_edd_meta_sad_page', '_esign_edd_sign_logic');

