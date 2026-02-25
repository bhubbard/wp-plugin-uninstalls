<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srcrqs_query_string_remove_ques');
delete_site_option('srcrqs_query_string_remove_ques');
delete_option('srcrqs_query_string_remove_amp');
delete_site_option('srcrqs_query_string_remove_amp');

