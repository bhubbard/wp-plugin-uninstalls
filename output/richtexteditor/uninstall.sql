-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RTE_ContentCss', 'RTE_EditorBodyStyle', 'RTE_GalleryPath', 'RTE_VideoPath', 'RTE_DocumentPath', 'RTE_TemplatePath', 'RTE_TextDirection', 'RTE_Admin_Width', 'RTE_Admin_Height', 'RTE_Site_Width', 'RTE_Site_Height', 'RTE_Admin_Skin', 'RTE_Admin_Toolbar', 'RTE_Site_UseRTE', 'RTE_Site_Skin', 'RTE_Site_Toolbar', 'RTE_Language', 'RTE_EnterKeyTag', 'RTE_UrlType', 'default_post_edit_rows');

