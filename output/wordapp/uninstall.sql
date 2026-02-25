-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wa_pdx_access_tickets', 'slimstat_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wa_pdx_meta_title', '_wa_pdx_meta_desc', '_wa_pdx_meta_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', '_aioseop_keywords', '_su_title', '_su_description', '_su_keywords', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wa_pdx_meta_title', '_wa_pdx_meta_desc', '_wa_pdx_meta_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', '_aioseop_keywords', '_su_title', '_su_description', '_su_keywords', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wa_pdx_meta_title', '_wa_pdx_meta_desc', '_wa_pdx_meta_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', '_aioseop_keywords', '_su_title', '_su_description', '_su_keywords', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wa_pdx_meta_title', '_wa_pdx_meta_desc', '_wa_pdx_meta_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', '_aioseop_keywords', '_su_title', '_su_description', '_su_keywords', '_wp_attachment_image_alt', '_wp_page_template');

