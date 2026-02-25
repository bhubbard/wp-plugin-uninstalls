<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weecomments_options');
delete_site_option('weecomments_options');
delete_option('weecomments_langconf');
delete_site_option('weecomments_langconf');
delete_option('weecomments_configuration');
delete_site_option('weecomments_configuration');

