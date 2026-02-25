<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('checkaim_mid');
delete_site_option('checkaim_mid');
delete_option('checkaim_auid');
delete_site_option('checkaim_auid');

