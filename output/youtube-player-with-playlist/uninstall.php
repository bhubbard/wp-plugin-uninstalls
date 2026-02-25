<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwidth');
delete_site_option('pwidth');
delete_option('pheight');
delete_site_option('pheight');

