<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pipdig_links');
delete_site_option('pipdig_links');
delete_option('pipdig_bloglovin_btn_url');
delete_site_option('pipdig_bloglovin_btn_url');

