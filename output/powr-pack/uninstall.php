<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('powr_token');
delete_site_option('powr_token');
delete_option('powr_powr_pack_plugin_do_activation_redirect');
delete_site_option('powr_powr_pack_plugin_do_activation_redirect');
delete_option('powr_install_time');
delete_site_option('powr_install_time');

