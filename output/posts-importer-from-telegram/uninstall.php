<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pift-bot-token');
delete_site_option('pift-bot-token');
delete_option('pift-action');
delete_site_option('pift-action');

