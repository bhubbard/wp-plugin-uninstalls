<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frrm_readmore_option_name');
delete_site_option('frrm_readmore_option_name');

