<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xml_gallery_table_name');
delete_site_option('xml_gallery_table_name');
delete_option('xml_gallery_db_version');
delete_site_option('xml_gallery_db_version');
delete_option('xml_gallery_qtd');
delete_site_option('xml_gallery_qtd');

