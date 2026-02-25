<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_uci_allow_urls');
delete_site_option('wp_uci_allow_urls');
delete_option('wp_uci_nbm_date');
delete_site_option('wp_uci_nbm_date');
delete_option('wp_uci_cbr_date');
delete_site_option('wp_uci_cbr_date');
delete_option('wp_uci_nbu_date');
delete_site_option('wp_uci_nbu_date');
delete_option('wp_uci_cbu_date');
delete_site_option('wp_uci_cbu_date');
delete_option('wp_uci_nbk_date');
delete_site_option('wp_uci_nbk_date');
delete_option('wp_uci_soap');
delete_site_option('wp_uci_soap');
delete_option('wp_uci_cba_date');
delete_site_option('wp_uci_cba_date');
delete_option('wp_uci_nbg_date');
delete_site_option('wp_uci_nbg_date');
delete_option('wp_uci_nbb_date');
delete_site_option('wp_uci_nbb_date');
delete_option('uci_db_version');
delete_site_option('uci_db_version');
delete_option('wp_uci_plurl');
delete_site_option('wp_uci_plurl');
delete_option('wp_uci_curl');
delete_site_option('wp_uci_curl');

