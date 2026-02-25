<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpo_wcpdf_version');
delete_site_option('wpo_wcpdf_version');
delete_option('wpo_wcpdf_documents_settings_invoice');
delete_site_option('wpo_wcpdf_documents_settings_invoice');

