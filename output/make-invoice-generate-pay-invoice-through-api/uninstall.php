<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_title');
delete_site_option('page_title');
delete_option('form_width');
delete_site_option('form_width');
delete_option('download_pdf_text');
delete_site_option('download_pdf_text');
delete_option('magmi_classic');
delete_site_option('magmi_classic');

