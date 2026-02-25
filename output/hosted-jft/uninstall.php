<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jft_timezone');
delete_site_option('jft_timezone');
delete_option('jft_custom_field');
delete_site_option('jft_custom_field');
delete_option('jft_page_url');
delete_site_option('jft_page_url');
delete_option('jft_more_text');
delete_site_option('jft_more_text');

