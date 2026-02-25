<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sftcy-wordai-content-settings-data');
delete_site_option('sftcy-wordai-content-settings-data');
delete_option('sftcy-wordai-apisettings-data');
delete_site_option('sftcy-wordai-apisettings-data');
delete_option('sftcy-wordai-image-settings-data');
delete_site_option('sftcy-wordai-image-settings-data');

