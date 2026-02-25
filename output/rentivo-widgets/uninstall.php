<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rentivoSettings');
delete_site_option('rentivoSettings');
delete_option('rentivoWidgetsGeneral');
delete_site_option('rentivoWidgetsGeneral');
delete_option('dataBridgeIncluded');
delete_site_option('dataBridgeIncluded');
delete_option('rentivoWidgets');
delete_site_option('rentivoWidgets');
delete_option('dataBridgeOption');
delete_site_option('dataBridgeOption');

