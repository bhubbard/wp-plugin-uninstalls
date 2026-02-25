<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sliderarrowcolo_74839');
delete_site_option('sliderarrowcolo_74839');

