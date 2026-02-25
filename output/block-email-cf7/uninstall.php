<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('form_email_fields');
delete_site_option('form_email_fields');
delete_option('display_error_message');
delete_site_option('display_error_message');
delete_option('list_of_block_domains');
delete_site_option('list_of_block_domains');

