<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enjaneb_widget_epi');
delete_site_option('enjaneb_widget_epi');
delete_option('enjaneb_widget_lng');
delete_site_option('enjaneb_widget_lng');
delete_option('enjaneb_widget_org');
delete_site_option('enjaneb_widget_org');

// Delete Transients
delete_transient('error_enjaneb');
delete_site_transient('error_enjaneb');

