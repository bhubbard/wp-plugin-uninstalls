<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('form_background_img_url');
delete_site_option('form_background_img_url');
delete_option('form_background_color');
delete_site_option('form_background_color');

