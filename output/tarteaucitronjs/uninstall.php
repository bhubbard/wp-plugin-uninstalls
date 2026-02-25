<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tarteaucitronUUID');
delete_site_option('tarteaucitronUUID');
delete_option('tarteaucitronToken');
delete_site_option('tarteaucitronToken');
delete_option('tarteaucitronShowWidget');
delete_site_option('tarteaucitronShowWidget');

