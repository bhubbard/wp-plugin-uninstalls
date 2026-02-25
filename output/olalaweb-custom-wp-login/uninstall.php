<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ola_ll_img_url');
delete_site_option('ola_ll_img_url');
delete_option('ola_ll_sizes');
delete_site_option('ola_ll_sizes');

