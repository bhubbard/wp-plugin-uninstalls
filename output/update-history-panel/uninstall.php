<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('updahipa_logs');
delete_site_option('updahipa_logs');
delete_option('updahipa_snapshot');
delete_site_option('updahipa_snapshot');

