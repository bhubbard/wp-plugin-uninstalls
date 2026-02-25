<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formadiable_form_email_fields');
delete_site_option('formadiable_form_email_fields');
delete_option('formadiable_list_of_block_domains');
delete_site_option('formadiable_list_of_block_domains');
delete_option('formadiable_display_error_message');
delete_site_option('formadiable_display_error_message');

