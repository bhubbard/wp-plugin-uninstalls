<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7_pdf_gen_allowed_form_id');
delete_site_option('cf7_pdf_gen_allowed_form_id');

