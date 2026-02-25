<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_PK_404');
delete_site_option('_PK_404');
delete_option('_PK_Active_Redirect');
delete_site_option('_PK_Active_Redirect');
delete_option('WriteCSS');
delete_site_option('WriteCSS');
delete_option('_PK_css_value');
delete_site_option('_PK_css_value');
delete_option('_PK_css_options');
delete_site_option('_PK_css_options');
delete_option('WriteJS');
delete_site_option('WriteJS');
delete_option('_PK_js_value');
delete_site_option('_PK_js_value');
delete_option('_PK_js_options');
delete_site_option('_PK_js_options');
delete_option('WritePNG');
delete_site_option('WritePNG');
delete_option('_PK_png_value');
delete_site_option('_PK_png_value');
delete_option('_PK_png_options');
delete_site_option('_PK_png_options');
delete_option('WriteJPG');
delete_site_option('WriteJPG');
delete_option('_PK_jpg_value');
delete_site_option('_PK_jpg_value');
delete_option('_PK_jpg_options');
delete_site_option('_PK_jpg_options');
delete_option('_PK_301_new_setting');
delete_site_option('_PK_301_new_setting');
delete_option('_PK_301_old_setting');
delete_site_option('_PK_301_old_setting');
delete_option('_PK_302_old_setting');
delete_site_option('_PK_302_old_setting');
delete_option('_PK_302_new_setting');
delete_site_option('_PK_302_new_setting');
delete_option('_PK_404_setting');
delete_site_option('_PK_404_setting');
delete_option('_PK_500_setting');
delete_site_option('_PK_500_setting');
delete_option('_PK_redirect_old_urls');
delete_site_option('_PK_redirect_old_urls');
delete_option('_PK_redirect_new_urls');
delete_site_option('_PK_redirect_new_urls');
delete_option('Write301');
delete_site_option('Write301');
delete_option('Write302');
delete_site_option('Write302');
delete_option('Write404');
delete_site_option('Write404');
delete_option('Write500');
delete_site_option('Write500');
delete_option('ForceHttps');
delete_site_option('ForceHttps');
delete_option('_PK_created_default');
delete_site_option('_PK_created_default');
delete_option('_PK_400_setting');
delete_site_option('_PK_400_setting');

