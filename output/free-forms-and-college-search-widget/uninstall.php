<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('free_forms_and_college_search_widget_option_name');
delete_site_option('free_forms_and_college_search_widget_option_name');

