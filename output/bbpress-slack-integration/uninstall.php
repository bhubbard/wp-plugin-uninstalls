<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jp_bbpress_slack_webhook');
delete_site_option('jp_bbpress_slack_webhook');

