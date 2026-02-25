<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conductor_qr_generator_logo_url');
delete_site_option('conductor_qr_generator_logo_url');
delete_option('conductor_qr_generator_footer_text');
delete_site_option('conductor_qr_generator_footer_text');

