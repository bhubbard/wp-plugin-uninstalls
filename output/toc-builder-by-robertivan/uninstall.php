<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tbrv_options');
delete_site_option('tbrv_options');
delete_option('toc_master_options');
delete_site_option('toc_master_options');

