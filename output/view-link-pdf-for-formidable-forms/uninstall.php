<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frm_pdf_view_free_template_id');
delete_site_option('frm_pdf_view_free_template_id');
delete_option('frm_pdf_view_logo_attachment_id');
delete_site_option('frm_pdf_view_logo_attachment_id');

