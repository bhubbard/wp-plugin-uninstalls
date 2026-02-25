-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qbp_popup_active', '_qbpp_image_id', '_qbp_popup_url', '_qbp_popup_content_heading', '_qbp_popup_content_desc', '_qbpp_custom_content_active', '_qbp_popup_custom_content', '_qbpp_heading_align', '_qbpp_desc_align', '_qbp_popup_display', '_qbp_popup_auto_hide', '_qbp_popup_size', '_qbpp_custom_width', '_qbpp_custom_height', '_qbpp_display_popup_delay', '_qbpp_element_selector', '_qbp_popup_hide_delay');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qbp_popup_active', '_qbpp_image_id', '_qbp_popup_url', '_qbp_popup_content_heading', '_qbp_popup_content_desc', '_qbpp_custom_content_active', '_qbp_popup_custom_content', '_qbpp_heading_align', '_qbpp_desc_align', '_qbp_popup_display', '_qbp_popup_auto_hide', '_qbp_popup_size', '_qbpp_custom_width', '_qbpp_custom_height', '_qbpp_display_popup_delay', '_qbpp_element_selector', '_qbp_popup_hide_delay');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qbp_popup_active', '_qbpp_image_id', '_qbp_popup_url', '_qbp_popup_content_heading', '_qbp_popup_content_desc', '_qbpp_custom_content_active', '_qbp_popup_custom_content', '_qbpp_heading_align', '_qbpp_desc_align', '_qbp_popup_display', '_qbp_popup_auto_hide', '_qbp_popup_size', '_qbpp_custom_width', '_qbpp_custom_height', '_qbpp_display_popup_delay', '_qbpp_element_selector', '_qbp_popup_hide_delay');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qbp_popup_active', '_qbpp_image_id', '_qbp_popup_url', '_qbp_popup_content_heading', '_qbp_popup_content_desc', '_qbpp_custom_content_active', '_qbp_popup_custom_content', '_qbpp_heading_align', '_qbpp_desc_align', '_qbp_popup_display', '_qbp_popup_auto_hide', '_qbp_popup_size', '_qbpp_custom_width', '_qbpp_custom_height', '_qbpp_display_popup_delay', '_qbpp_element_selector', '_qbp_popup_hide_delay');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

