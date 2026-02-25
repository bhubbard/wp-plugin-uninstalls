<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maj-comp-1');
delete_site_option('maj-comp-1');
delete_option('maj-comp-2');
delete_site_option('maj-comp-2');
delete_option('maj-comp-3');
delete_site_option('maj-comp-3');
delete_option('maj-comp-4');
delete_site_option('maj-comp-4');

