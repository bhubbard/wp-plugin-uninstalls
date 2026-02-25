<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FVDUKDisableEndPoint');
delete_site_option('FVDUKDisableEndPoint');
delete_option('FVDUKCreditUs');
delete_site_option('FVDUKCreditUs');
delete_option('fvduk_sandbox_mode');
delete_site_option('fvduk_sandbox_mode');
delete_option('FVDUKCreditLink');
delete_site_option('FVDUKCreditLink');
delete_option('RandomAPIAccLevel1');
delete_site_option('RandomAPIAccLevel1');

