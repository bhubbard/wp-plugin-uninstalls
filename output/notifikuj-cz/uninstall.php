<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notifikuj_cz_option_name');
delete_site_option('notifikuj_cz_option_name');

