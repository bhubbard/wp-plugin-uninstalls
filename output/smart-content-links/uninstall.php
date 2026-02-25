<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sclfo_information_bar_data');
delete_site_option('sclfo_information_bar_data');
delete_option('sclfo_smart_content_link_data');
delete_site_option('sclfo_smart_content_link_data');

