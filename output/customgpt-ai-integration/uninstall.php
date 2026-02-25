<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customgpt_project_id');
delete_site_option('customgpt_project_id');
delete_option('customgpt_project_key');
delete_site_option('customgpt_project_key');

