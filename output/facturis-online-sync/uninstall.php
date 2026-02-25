<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fsync_auth_apikey');
delete_site_option('fsync_auth_apikey');
delete_option('fsync_auth_username');
delete_site_option('fsync_auth_username');
delete_option('fsync_auth_password');
delete_site_option('fsync_auth_password');
delete_option('fsync_auth_fiscalcode');
delete_site_option('fsync_auth_fiscalcode');
delete_option('fsync_option_autosyncstock');
delete_site_option('fsync_option_autosyncstock');
delete_option('fsync_option_autosyncorder');
delete_site_option('fsync_option_autosyncorder');
delete_option('fsync_option_filterstock');
delete_site_option('fsync_option_filterstock');
delete_option('fsync_option_syncordersas');
delete_site_option('fsync_option_syncordersas');
delete_option('fsync_option_proformaserie');
delete_site_option('fsync_option_proformaserie');
delete_option('fsync_option_daysago');
delete_site_option('fsync_option_daysago');
delete_option('fsync_option_addproforma');
delete_site_option('fsync_option_addproforma');
delete_option('fsync_option_addinvoice');
delete_site_option('fsync_option_addinvoice');
delete_option('fsync_option_viewproforma');
delete_site_option('fsync_option_viewproforma');
delete_option('fsync_option_viewinvoice');
delete_site_option('fsync_option_viewinvoice');
delete_option('fsync_option_editproforma');
delete_site_option('fsync_option_editproforma');
delete_option('fsync_option_editinvoice');
delete_site_option('fsync_option_editinvoice');
delete_option('fsync_option_withdiscount');
delete_site_option('fsync_option_withdiscount');
delete_option('fsync_option_proformaserie2');
delete_site_option('fsync_option_proformaserie2');
delete_option('fsync_option_invoiceserie');
delete_site_option('fsync_option_invoiceserie');

// Clear Cron Jobs
wp_clear_scheduled_hook('facturissynccronjob');

