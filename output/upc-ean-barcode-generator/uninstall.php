<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active-{%plugin%}-barcodes-version');
delete_site_option('active-{%plugin%}-barcodes-version');
delete_option('alg_wc_ean_title');
delete_site_option('alg_wc_ean_title');
delete_option('wpm_pgw_label');
delete_site_option('wpm_pgw_label');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

