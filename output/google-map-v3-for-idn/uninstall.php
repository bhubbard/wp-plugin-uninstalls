<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GMVoptions');
delete_site_option('GMVoptions');
delete_option('GMVcss');
delete_site_option('GMVcss');

