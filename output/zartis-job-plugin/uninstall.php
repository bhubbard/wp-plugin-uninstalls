<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Zartis_Unique_ID');
delete_site_option('Zartis_Unique_ID');
delete_option('Zartis_Page_ID');
delete_site_option('Zartis_Page_ID');
delete_option('Zartis_Notice');
delete_site_option('Zartis_Notice');
delete_option('Zartis_Group');
delete_site_option('Zartis_Group');
delete_option('Zartis_Width');
delete_site_option('Zartis_Width');

