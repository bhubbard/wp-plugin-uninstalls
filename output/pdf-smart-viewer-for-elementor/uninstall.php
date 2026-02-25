<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdfsmvif_default_zoom');
delete_site_option('pdfsmvif_default_zoom');
delete_option('pdfsmvif_enable_download');
delete_site_option('pdfsmvif_enable_download');
delete_option('pdfsmvif_enable_fullscreen');
delete_site_option('pdfsmvif_enable_fullscreen');
delete_option('pdfsmvif_enable_print');
delete_site_option('pdfsmvif_enable_print');
delete_option('pdfsmvif_enable_zoom_controls');
delete_site_option('pdfsmvif_enable_zoom_controls');
delete_option('pdfsmvif_enable_page_info');
delete_site_option('pdfsmvif_enable_page_info');
delete_option('pdfsmvif_default_height');
delete_site_option('pdfsmvif_default_height');
delete_option('pdfsmvif_enable_remote_pdfs');
delete_site_option('pdfsmvif_enable_remote_pdfs');

// Delete Transients
delete_transient('pdfsmvif_version_check');
delete_site_transient('pdfsmvif_version_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('epsv_cleanup_task');

