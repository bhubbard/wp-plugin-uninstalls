<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phplive_html_code');
delete_site_option('phplive_html_code');
delete_option('phplive_url_showhide');
delete_site_option('phplive_url_showhide');

