<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mml_leadform_option_apikey');
delete_site_option('mml_leadform_option_apikey');
delete_option('mml_leadform_option_hasapi');
delete_site_option('mml_leadform_option_hasapi');
delete_option('mml_leadform_option_formtitle');
delete_site_option('mml_leadform_option_formtitle');
delete_option('mml_leadform_option_privacy');
delete_site_option('mml_leadform_option_privacy');
delete_option('mml_leadform_option_buttoncolor');
delete_site_option('mml_leadform_option_buttoncolor');
delete_option('mml_leadform_option_formbg');
delete_site_option('mml_leadform_option_formbg');
delete_option('mml_leadform_option_formbgcolor');
delete_site_option('mml_leadform_option_formbgcolor');
delete_option('mml_leadform_option_selectlang');
delete_site_option('mml_leadform_option_selectlang');
delete_option('mml_leadform_option_googlekey');
delete_site_option('mml_leadform_option_googlekey');
delete_option('mml_leadform_option_selecttheme');
delete_site_option('mml_leadform_option_selecttheme');
delete_option('mml_leadform_option_titlealignment');
delete_site_option('mml_leadform_option_titlealignment');
delete_option('mml_leadform_option_buttontext');
delete_site_option('mml_leadform_option_buttontext');
delete_option('mml_leadform_option_thankyou');
delete_site_option('mml_leadform_option_thankyou');
delete_option('mml_leadform_option_trackform');
delete_site_option('mml_leadform_option_trackform');
delete_option('mml_leadform_option_devadminbox');
delete_site_option('mml_leadform_option_devadminbox');
delete_option('mml_detectiondb_version');
delete_site_option('mml_detectiondb_version');

