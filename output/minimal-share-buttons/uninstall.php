<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msb_socials');
delete_site_option('msb_socials');
delete_option('msb_content_filter');
delete_site_option('msb_content_filter');
delete_option('msb_content_title');
delete_site_option('msb_content_title');

