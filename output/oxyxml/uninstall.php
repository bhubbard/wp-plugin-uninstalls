<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oxyXML_active');
delete_site_option('oxyXML_active');
delete_option('oxyXML_categories');
delete_site_option('oxyXML_categories');
delete_option('oxyXML_path');
delete_site_option('oxyXML_path');
delete_option('oxyXML_delay');
delete_site_option('oxyXML_delay');
delete_option('oxyXML_count');
delete_site_option('oxyXML_count');
delete_option('oxyXML_export_excerpt');
delete_site_option('oxyXML_export_excerpt');
delete_option('oxyXML_export_content');
delete_site_option('oxyXML_export_content');
delete_option('oxyXML_export_date');
delete_site_option('oxyXML_export_date');
delete_option('oxyXML_export_category_id');
delete_site_option('oxyXML_export_category_id');
delete_option('oxyXML_export_category_name');
delete_site_option('oxyXML_export_category_name');
delete_option('oxyXML_export_title');
delete_site_option('oxyXML_export_title');
delete_option('oxyXML_export_url');
delete_site_option('oxyXML_export_url');

