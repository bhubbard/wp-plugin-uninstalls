<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awas-agreement');
delete_site_option('awas-agreement');
delete_option('awas_run_once');
delete_site_option('awas_run_once');

