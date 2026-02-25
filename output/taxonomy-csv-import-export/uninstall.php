<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taxocsie_version');
delete_site_option('taxocsie_version');
delete_option('taxocsie_installed');
delete_site_option('taxocsie_installed');

// Delete Transients
delete_transient('taxoscie_csv_data');
delete_site_transient('taxoscie_csv_data');

