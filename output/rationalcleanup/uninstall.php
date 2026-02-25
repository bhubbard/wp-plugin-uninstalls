<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rationalcleanup_options');
delete_site_option('rationalcleanup_options');
delete_option('rationalcleanup_third_party_widgets');
delete_site_option('rationalcleanup_third_party_widgets');

// Delete Transients
delete_transient('rationalwp_plugins_list');
delete_site_transient('rationalwp_plugins_list');

