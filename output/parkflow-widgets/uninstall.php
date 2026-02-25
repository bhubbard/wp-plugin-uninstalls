<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parkflow_color');
delete_site_option('parkflow_color');
delete_option('parkflow_tenant');
delete_site_option('parkflow_tenant');
delete_option('parkflow_parking');
delete_site_option('parkflow_parking');
delete_option('parkflow_locale');
delete_site_option('parkflow_locale');

