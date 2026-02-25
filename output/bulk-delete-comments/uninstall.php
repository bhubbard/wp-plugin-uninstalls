<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_transient_wc_count_comments');
delete_site_option('_transient_wc_count_comments');
delete_option('dac_disable_option');
delete_site_option('dac_disable_option');
delete_option('dac_hide_option');
delete_site_option('dac_hide_option');

// Delete Transients
delete_transient('dac_plugin_activated_redirect');
delete_site_transient('dac_plugin_activated_redirect');

