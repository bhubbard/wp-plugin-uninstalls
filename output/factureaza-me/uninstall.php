<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('factureazame_apiurl');
delete_site_option('factureazame_apiurl');
delete_option('factureazame_apikey');
delete_site_option('factureazame_apikey');
delete_option('factureazame_estimates');
delete_site_option('factureazame_estimates');
delete_option('factureazame_company');
delete_site_option('factureazame_company');
delete_option('factureazame_series');
delete_site_option('factureazame_series');
delete_option('factureazame_number');
delete_site_option('factureazame_number');
delete_option('factureazame_duedays');
delete_site_option('factureazame_duedays');
delete_option('factureazame_cashing');
delete_site_option('factureazame_cashing');
delete_option('factureazame_receipt_series');
delete_site_option('factureazame_receipt_series');
delete_option('factureazame_op_series');
delete_site_option('factureazame_op_series');
delete_option('factureazame_est-series');
delete_site_option('factureazame_est-series');
delete_option('factureazame_est-number');
delete_site_option('factureazame_est-number');
delete_option('factureazame_sent');
delete_site_option('factureazame_sent');

