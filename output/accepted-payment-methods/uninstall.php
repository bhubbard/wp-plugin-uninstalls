<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwk_apm_settings');
delete_site_option('dwk_apm_settings');
delete_option('dwk_apm_payment_methods');
delete_site_option('dwk_apm_payment_methods');

