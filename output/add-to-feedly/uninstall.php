<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ADD_TO_FEEDLY_active');
delete_site_option('ADD_TO_FEEDLY_active');
delete_option('ADD_TO_FEEDLY_feed_url');
delete_site_option('ADD_TO_FEEDLY_feed_url');
delete_option('ADD_TO_FEEDLY_customtext');
delete_site_option('ADD_TO_FEEDLY_customtext');
delete_option('ADD_TO_FEEDLY_position');
delete_site_option('ADD_TO_FEEDLY_position');
delete_option('ADD_TO_FEEDLY_size');
delete_site_option('ADD_TO_FEEDLY_size');

