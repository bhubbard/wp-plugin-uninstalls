<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pageId_RBMIC');
delete_site_option('pageId_RBMIC');
delete_option('color_RBMIC');
delete_site_option('color_RBMIC');
delete_option('borde_RBMIC');
delete_site_option('borde_RBMIC');
delete_option('texto_RBMIC');
delete_site_option('texto_RBMIC');
delete_option('boton1_RBMIC');
delete_site_option('boton1_RBMIC');
delete_option('boton2_RBMIC');
delete_site_option('boton2_RBMIC');
delete_option('texto_boton__RBMIC');
delete_site_option('texto_boton__RBMIC');
delete_option('colorBorde_RBMIC');
delete_site_option('colorBorde_RBMIC');
delete_option('doctor_RBMIC');
delete_site_option('doctor_RBMIC');

