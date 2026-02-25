<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobiloud_smart_app_banner');
delete_site_option('mobiloud_smart_app_banner');
delete_option('Activated_Mobiloud_Smart_App_Banner');
delete_site_option('Activated_Mobiloud_Smart_App_Banner');

