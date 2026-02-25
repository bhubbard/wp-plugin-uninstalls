<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('socialgallery_block_access_token');
delete_site_option('socialgallery_block_access_token');
delete_option('socialgallery_block_activation_redirect');
delete_site_option('socialgallery_block_activation_redirect');

