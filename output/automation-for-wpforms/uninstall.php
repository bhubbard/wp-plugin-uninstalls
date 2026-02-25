<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rnauto_process_link_page_id');
delete_site_option('rnauto_process_link_page_id');
delete_option('rnauto_process_workflow_page_id');
delete_site_option('rnauto_process_workflow_page_id');

