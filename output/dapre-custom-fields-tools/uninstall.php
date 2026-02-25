<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dapre_cft_previous_options');
delete_site_option('dapre_cft_previous_options');
delete_option('dapre_cft_previous_user_fields');
delete_site_option('dapre_cft_previous_user_fields');
delete_option('dapre_cft_previous_post_fields');
delete_site_option('dapre_cft_previous_post_fields');

