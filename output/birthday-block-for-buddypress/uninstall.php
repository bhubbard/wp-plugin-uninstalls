<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buddy_birthday_field_id');
delete_site_option('buddy_birthday_field_id');
delete_option('buddy_birthday_default_range');
delete_site_option('buddy_birthday_default_range');
delete_option('buddy_birthday_default_limit');
delete_site_option('buddy_birthday_default_limit');

