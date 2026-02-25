<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edd-template-status');
delete_site_option('edd-template-status');
delete_option('edd-template-style');
delete_site_option('edd-template-style');
delete_option('edd-template-checkout-page');
delete_site_option('edd-template-checkout-page');
delete_option('edd-template-receipt-page');
delete_site_option('edd-template-receipt-page');
delete_option('edd-template-confirmation-page');
delete_site_option('edd-template-confirmation-page');
delete_option('edd-template-purchase-confirmation-page');
delete_site_option('edd-template-purchase-confirmation-page');
delete_option('edd-template-download-history-page');
delete_site_option('edd-template-download-history-page');
delete_option('edd-template-purchase-history-page');
delete_site_option('edd-template-purchase-history-page');

