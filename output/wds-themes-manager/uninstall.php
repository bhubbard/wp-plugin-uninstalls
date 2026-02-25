<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdstm_order_filter');
delete_site_option('wdstm_order_filter');
delete_option('wdstm-activate-plugin');
delete_site_option('wdstm-activate-plugin');
delete_option('wdstm_default_theme');
delete_site_option('wdstm_default_theme');
delete_option('wdstm_sign_db_version');
delete_site_option('wdstm_sign_db_version');

