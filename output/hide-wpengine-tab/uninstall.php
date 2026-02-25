<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hwpet_settings');
delete_site_option('hwpet_settings');
delete_option('hwpet_lock');
delete_site_option('hwpet_lock');
delete_option('hwpet_locked_by');
delete_site_option('hwpet_locked_by');
delete_option('hwpet_lock_date');
delete_site_option('hwpet_lock_date');
delete_option('hwpet_lock_message');
delete_site_option('hwpet_lock_message');

