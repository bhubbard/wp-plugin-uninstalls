<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('headit_headerlist_real');
delete_site_option('headit_headerlist_real');
delete_option('headit_headerlist');
delete_site_option('headit_headerlist');

