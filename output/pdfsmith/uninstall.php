<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdfsmith_settings');
delete_site_option('pdfsmith_settings');
delete_option('pdfsmith_active_provider');
delete_site_option('pdfsmith_active_provider');

