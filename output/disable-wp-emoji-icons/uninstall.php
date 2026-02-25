<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DWEI_activated_on');
delete_site_option('DWEI_activated_on');
delete_option('DWEI_deactivated_on');
delete_site_option('DWEI_deactivated_on');

