<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mwd_mcer_options');
delete_site_option('mwd_mcer_options');
delete_option('mwd_mcer_latest_fxrates');
delete_site_option('mwd_mcer_latest_fxrates');
delete_option('mwd_mcer_fxcurrencies');
delete_site_option('mwd_mcer_fxcurrencies');
delete_option('widget_mfr');
delete_site_option('widget_mfr');

// Delete Transients
delete_transient('mwd_mcer_fxrates');
delete_site_transient('mwd_mcer_fxrates');
delete_transient('mwd_mcer_fxcurrencies');
delete_site_transient('mwd_mcer_fxcurrencies');

