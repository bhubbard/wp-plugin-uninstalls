-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_codeless_stp_type_from', '_codeless_stp_external_title', '_codeless_stp_external_link', '_codeless_stp_external_button_text', '_codeless_stp_external_image', '_codeless_stp_woocommerce_post', '_codeless_stp_woocommerce_button_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_codeless_stp_type_from', '_codeless_stp_external_title', '_codeless_stp_external_link', '_codeless_stp_external_button_text', '_codeless_stp_external_image', '_codeless_stp_woocommerce_post', '_codeless_stp_woocommerce_button_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_codeless_stp_type_from', '_codeless_stp_external_title', '_codeless_stp_external_link', '_codeless_stp_external_button_text', '_codeless_stp_external_image', '_codeless_stp_woocommerce_post', '_codeless_stp_woocommerce_button_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_codeless_stp_type_from', '_codeless_stp_external_title', '_codeless_stp_external_link', '_codeless_stp_external_button_text', '_codeless_stp_external_image', '_codeless_stp_woocommerce_post', '_codeless_stp_woocommerce_button_text');

