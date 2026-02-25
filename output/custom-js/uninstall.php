<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cjs_head');
delete_site_option('cjs_head');
delete_option('cjs_footer');
delete_site_option('cjs_footer');

