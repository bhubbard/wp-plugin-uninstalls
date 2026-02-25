<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_slack_post_hook');
delete_site_option('wc_slack_post_hook');
delete_option('wc_slack_default_channel');
delete_site_option('wc_slack_default_channel');

