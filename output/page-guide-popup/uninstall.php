<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_guide_pages');
delete_site_option('page_guide_pages');
delete_option('page_guide_greeting');
delete_site_option('page_guide_greeting');

