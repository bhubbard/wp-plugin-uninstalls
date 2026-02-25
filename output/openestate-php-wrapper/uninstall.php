<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openestate_wrapper_script_path');
delete_site_option('openestate_wrapper_script_path');
delete_option('openestate_wrapper_script_url');
delete_site_option('openestate_wrapper_script_url');

