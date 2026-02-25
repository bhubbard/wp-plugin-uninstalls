<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdf_elementor_activation_time');
delete_site_option('pdf_elementor_activation_time');
delete_option('void_spare_me');
delete_site_option('void_spare_me');

