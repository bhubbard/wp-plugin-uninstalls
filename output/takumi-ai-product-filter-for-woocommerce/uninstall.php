<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('takaifwc_settings');
delete_site_option('takaifwc_settings');
delete_option('TAKAIFWC_Button_Styles');
delete_site_option('TAKAIFWC_Button_Styles');
delete_option('takaifwc_button_styles');
delete_site_option('takaifwc_button_styles');

