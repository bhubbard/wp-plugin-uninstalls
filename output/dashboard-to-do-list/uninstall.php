<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ardtdw-checkbox-admineditor');
delete_site_option('ardtdw-checkbox-admineditor');
delete_option('ardtdw-textarea');
delete_site_option('ardtdw-textarea');
delete_option('ardtdw-checkbox');
delete_site_option('ardtdw-checkbox');
delete_option('ardtdw-checkbox-editor');
delete_site_option('ardtdw-checkbox-editor');
delete_option('ardtdw-position');
delete_site_option('ardtdw-position');

