<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eofdsupport_username');
delete_site_option('eofdsupport_username');
delete_option('eofdsupport_password');
delete_site_option('eofdsupport_password');
delete_option('eofdsupport_url');
delete_site_option('eofdsupport_url');
delete_option('eofdsupport_kktNumber');
delete_site_option('eofdsupport_kktNumber');
delete_option('eofdsupport_multi_kkt');
delete_site_option('eofdsupport_multi_kkt');
delete_option('eofdsupport_taxationSystem');
delete_site_option('eofdsupport_taxationSystem');
delete_option('eofdsupport_VATrate');
delete_site_option('eofdsupport_VATrate');
delete_option('eofdsupport_VATrate_delivered');
delete_site_option('eofdsupport_VATrate_delivered');
delete_option('eofdsupport_TypeOfMeasurement');
delete_site_option('eofdsupport_TypeOfMeasurement');
delete_option('eofdsupport_buyerAddress');
delete_site_option('eofdsupport_buyerAddress');
delete_option('eofdsupport_payment_gateways');
delete_site_option('eofdsupport_payment_gateways');
delete_option('eofdsupport_cashierName');
delete_site_option('eofdsupport_cashierName');
delete_option('eofdsupport_cashierInn');
delete_site_option('eofdsupport_cashierInn');
delete_option('eofdsupport_placeMarket');
delete_site_option('eofdsupport_placeMarket');
delete_option('eofdsupport_2_receipt');
delete_site_option('eofdsupport_2_receipt');
delete_option('eofdsupport_STATUS_income');
delete_site_option('eofdsupport_STATUS_income');
delete_option('eofdsupport_STATUS_income2');
delete_site_option('eofdsupport_STATUS_income2');
delete_option('eofdsupport_STATUS_refund');
delete_site_option('eofdsupport_STATUS_refund');
delete_option('eofdsupport_signSalesMethod');
delete_site_option('eofdsupport_signSalesMethod');
delete_option('eofdsupport_indTradeItem');
delete_site_option('eofdsupport_indTradeItem');
delete_option('eofdsupport_db_version');
delete_site_option('eofdsupport_db_version');
delete_option('eofdsupport_eofdsupport_signSalesMethod');
delete_site_option('eofdsupport_eofdsupport_signSalesMethod');

// Clear Cron Jobs
wp_clear_scheduled_hook('eofdsupport_my_hourly_event');

