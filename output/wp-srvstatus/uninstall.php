<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgtitle');
delete_site_option('wgtitle');
delete_option('srvLink');
delete_site_option('srvLink');
delete_option('serveraddress');
delete_site_option('serveraddress');
delete_option('port');
delete_site_option('port');
delete_option('dspname');
delete_site_option('dspname');
delete_option('srvLink1');
delete_site_option('srvLink1');
delete_option('serveraddress1');
delete_site_option('serveraddress1');
delete_option('port1');
delete_site_option('port1');
delete_option('dspname1');
delete_site_option('dspname1');
delete_option('dspstyle');
delete_site_option('dspstyle');
delete_option('wpsrvstatus_widget');
delete_site_option('wpsrvstatus_widget');
delete_option('srvstatus_options');
delete_site_option('srvstatus_options');
delete_option('srvstatus_widget');
delete_site_option('srvstatus_widget');

