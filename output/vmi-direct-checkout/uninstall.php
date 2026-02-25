<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dirctcheckoutvmi_buttontext');
delete_site_option('dirctcheckoutvmi_buttontext');
delete_option('dirctcheckoutvmi_bgcolor');
delete_site_option('dirctcheckoutvmi_bgcolor');
delete_option('dirctcheckoutvmi_textcolor');
delete_site_option('dirctcheckoutvmi_textcolor');
delete_option('dirctcheckoutvmi_cartHide');
delete_site_option('dirctcheckoutvmi_cartHide');
delete_option('dirctcheckoutvmi_buybtn');
delete_site_option('dirctcheckoutvmi_buybtn');
delete_option('my_plugin_do_activation_redirect');
delete_site_option('my_plugin_do_activation_redirect');

