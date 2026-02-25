<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_opm_img_messages');
delete_site_option('_opm_img_messages');
delete_option('opm_img_options');
delete_site_option('opm_img_options');

