<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('get_multi_mr_redirects');
delete_site_option('get_multi_mr_redirects');

