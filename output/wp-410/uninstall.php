<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mclv_410_options_version');
delete_site_option('mclv_410_options_version');
delete_option('mclv_410_max_404s');
delete_site_option('mclv_410_max_404s');
delete_option('mclv_410_links_list');
delete_site_option('mclv_410_links_list');

