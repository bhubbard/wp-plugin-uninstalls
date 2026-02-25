<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('expresspay_plugin_ult');
delete_site_option('expresspay_plugin_ult');
delete_option('expresspay_plugin_is_active');
delete_site_option('expresspay_plugin_is_active');

