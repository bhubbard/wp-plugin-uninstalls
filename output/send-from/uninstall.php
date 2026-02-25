<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Send_From_Send_Test_Opts');
delete_site_option('Send_From_Send_Test_Opts');

