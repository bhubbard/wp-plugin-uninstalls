<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hptpd_plugin_version');
delete_site_option('hptpd_plugin_version');
delete_option('hptpd_pub_data_from_approval_form');
delete_site_option('hptpd_pub_data_from_approval_form');

