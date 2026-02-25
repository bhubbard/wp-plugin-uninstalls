<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tkf_script_async');
delete_site_option('tkf_script_async');
delete_option('tkf_script_defer');
delete_site_option('tkf_script_defer');

