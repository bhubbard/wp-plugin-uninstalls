<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amm_drcfw_show_msg');
delete_site_option('amm_drcfw_show_msg');

