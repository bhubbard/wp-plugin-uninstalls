<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spinnaker_img_trigger_height');
delete_site_option('spinnaker_img_trigger_height');
delete_option('spinnaker_download_stats');
delete_site_option('spinnaker_download_stats');
delete_option('spinnaker_install_date');
delete_site_option('spinnaker_install_date');

