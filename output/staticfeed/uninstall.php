<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('staticfeed_general');
delete_site_option('staticfeed_general');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

