<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('invelity_sps_connect_options');
delete_site_option('invelity_sps_connect_options');

// Delete Transients
delete_transient('invelity-plugins-description');
delete_site_transient('invelity-plugins-description');
delete_transient('invelity-plugins-ad');
delete_site_transient('invelity-plugins-ad');
delete_transient('invelity-sps-connect-ad');
delete_site_transient('invelity-sps-connect-ad');

