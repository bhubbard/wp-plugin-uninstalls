<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('techno_bing_page_id');
delete_site_option('techno_bing_page_id');
delete_option('techno_bing_script');
delete_site_option('techno_bing_script');

