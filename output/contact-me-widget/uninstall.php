<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Contact_Me_Button_Username');
delete_site_option('Contact_Me_Button_Username');
delete_option('Contact_Me_Button_DisplayName');
delete_site_option('Contact_Me_Button_DisplayName');
delete_option('Contact_Me_Button_buttonType');
delete_site_option('Contact_Me_Button_buttonType');
delete_option('Contact_Me_Button_buttonLocation');
delete_site_option('Contact_Me_Button_buttonLocation');
delete_option('Contact_Me_Button_overlay');
delete_site_option('Contact_Me_Button_overlay');

