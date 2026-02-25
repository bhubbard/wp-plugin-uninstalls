<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Cdn_Medianova');
delete_site_option('Cdn_Medianova');
delete_option('cdn_medianova');
delete_site_option('cdn_medianova');

