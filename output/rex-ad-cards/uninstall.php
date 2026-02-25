<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rac_api_key');
delete_site_option('rac_api_key');
delete_option('rac_snippet_code');
delete_site_option('rac_snippet_code');

