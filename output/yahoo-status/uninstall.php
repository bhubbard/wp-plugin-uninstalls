<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yahoo_status-my-yahoo-id');
delete_site_option('yahoo_status-my-yahoo-id');
delete_option('yahoo_status-tmp-yahoo-id');
delete_site_option('yahoo_status-tmp-yahoo-id');
delete_option('yahoo_status-tmp-yahoo-pass');
delete_site_option('yahoo_status-tmp-yahoo-pass');
delete_option('yahoo_status-friend-cache');
delete_site_option('yahoo_status-friend-cache');
delete_option('yahoo-status-bot-changed');
delete_site_option('yahoo-status-bot-changed');
delete_option('yahoo_status-show-status');
delete_site_option('yahoo_status-show-status');
delete_option('yahoo_status-title');
delete_site_option('yahoo_status-title');

