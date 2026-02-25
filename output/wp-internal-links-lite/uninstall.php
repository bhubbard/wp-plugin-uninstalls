<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('INLPLN_ACTIVATED');
delete_site_option('INLPLN_ACTIVATED');
delete_option('INLPLN_DISMISS');
delete_site_option('INLPLN_DISMISS');

