<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('peb_caption');
delete_site_option('peb_caption');
delete_option('peb_before');
delete_site_option('peb_before');
delete_option('peb_after');
delete_site_option('peb_after');
delete_option('peb_remove');
delete_site_option('peb_remove');

