<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guru_unit');
delete_site_option('guru_unit');
delete_option('guru_space');
delete_site_option('guru_space');

