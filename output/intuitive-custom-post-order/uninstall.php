<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hicpo_network_sites');
delete_site_option('hicpo_network_sites');
delete_option('hicpo_options');
delete_site_option('hicpo_options');
delete_option('hicpo_activation');
delete_site_option('hicpo_activation');
delete_option('hicpo_ver');
delete_site_option('hicpo_ver');

