<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hienchuthich');
delete_site_option('hienchuthich');
delete_option('phoneNumberMevivu');
delete_site_option('phoneNumberMevivu');
delete_option('textOnButtonMevivu');
delete_site_option('textOnButtonMevivu');
delete_option('tawktocodeMevivu');
delete_site_option('tawktocodeMevivu');
delete_option('fanpageIDMevivu');
delete_site_option('fanpageIDMevivu');
delete_option('zaloPhoneMevivu');
delete_site_option('zaloPhoneMevivu');
delete_option('googlemap');
delete_site_option('googlemap');
delete_option('contactFormMevivu');
delete_site_option('contactFormMevivu');
delete_option('plugin_options');
delete_site_option('plugin_options');

