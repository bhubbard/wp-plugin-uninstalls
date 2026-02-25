<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pifo_pdf_invoices_settings');
delete_site_option('pifo_pdf_invoices_settings');

