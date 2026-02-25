<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('venjuewidget_business_vat');
delete_site_option('venjuewidget_business_vat');
delete_option('venjuewidget_accent_color');
delete_site_option('venjuewidget_accent_color');
delete_option('venjuewidget_language');
delete_site_option('venjuewidget_language');
delete_option('venjuewidget_gtm_id');
delete_site_option('venjuewidget_gtm_id');
delete_option('venjuewidget_custom_code');
delete_site_option('venjuewidget_custom_code');

