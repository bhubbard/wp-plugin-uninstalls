<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('RTE_ContentCss');
delete_site_option('RTE_ContentCss');
delete_option('RTE_EditorBodyStyle');
delete_site_option('RTE_EditorBodyStyle');
delete_option('RTE_GalleryPath');
delete_site_option('RTE_GalleryPath');
delete_option('RTE_VideoPath');
delete_site_option('RTE_VideoPath');
delete_option('RTE_DocumentPath');
delete_site_option('RTE_DocumentPath');
delete_option('RTE_TemplatePath');
delete_site_option('RTE_TemplatePath');
delete_option('RTE_TextDirection');
delete_site_option('RTE_TextDirection');
delete_option('RTE_Admin_Width');
delete_site_option('RTE_Admin_Width');
delete_option('RTE_Admin_Height');
delete_site_option('RTE_Admin_Height');
delete_option('RTE_Site_Width');
delete_site_option('RTE_Site_Width');
delete_option('RTE_Site_Height');
delete_site_option('RTE_Site_Height');
delete_option('RTE_Admin_Skin');
delete_site_option('RTE_Admin_Skin');
delete_option('RTE_Admin_Toolbar');
delete_site_option('RTE_Admin_Toolbar');
delete_option('RTE_Site_UseRTE');
delete_site_option('RTE_Site_UseRTE');
delete_option('RTE_Site_Skin');
delete_site_option('RTE_Site_Skin');
delete_option('RTE_Site_Toolbar');
delete_site_option('RTE_Site_Toolbar');
delete_option('RTE_Language');
delete_site_option('RTE_Language');
delete_option('RTE_EnterKeyTag');
delete_site_option('RTE_EnterKeyTag');
delete_option('RTE_UrlType');
delete_site_option('RTE_UrlType');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');

