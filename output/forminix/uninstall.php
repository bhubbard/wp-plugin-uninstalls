<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('forminix_modules');
delete_site_option('forminix_modules');
delete_option('forminix_forms');
delete_site_option('forminix_forms');
delete_option('forminix_form_settings');
delete_site_option('forminix_form_settings');
delete_option('forminix_entries');
delete_site_option('forminix_entries');
delete_option('forminix_entry_settings');
delete_site_option('forminix_entry_settings');

