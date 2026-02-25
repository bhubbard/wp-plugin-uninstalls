<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('generator_for_pdf_settings');
delete_site_option('generator_for_pdf_settings');

