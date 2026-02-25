<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('changa_feeds');
delete_site_option('changa_feeds');
delete_option('changa_generic_feed_appid');
delete_site_option('changa_generic_feed_appid');
delete_option('changa_generic_para');
delete_site_option('changa_generic_para');
delete_option('changa_needs_redirection');
delete_site_option('changa_needs_redirection');

