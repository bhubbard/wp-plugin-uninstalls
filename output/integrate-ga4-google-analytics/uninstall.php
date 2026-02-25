<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iga_gtag_id');
delete_site_option('iga_gtag_id');
delete_option('iga_disable_for_roles');
delete_site_option('iga_disable_for_roles');

