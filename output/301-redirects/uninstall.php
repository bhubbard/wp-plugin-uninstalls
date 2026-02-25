<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ts_301_redirection');
delete_site_option('ts_301_redirection');
delete_option('301_redirects_404_log');
delete_site_option('301_redirects_404_log');

