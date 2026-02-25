<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zjpas_mfczipjp_cash_version');
delete_site_option('zjpas_mfczipjp_cash_version');
delete_option('zjpas_mfczipjpservice_options');
delete_site_option('zjpas_mfczipjpservice_options');

