<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('virtualspirits');
delete_site_option('virtualspirits');
delete_option('virtualspirits_status');
delete_site_option('virtualspirits_status');

