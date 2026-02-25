<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wolf_pushy_id');
delete_site_option('wolf_pushy_id');
delete_option('wolf_id_list');
delete_site_option('wolf_id_list');
delete_option('wolf_api_id');
delete_site_option('wolf_api_id');

