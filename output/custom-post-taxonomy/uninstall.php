<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cuptaxnf_custom_post_opt');
delete_site_option('cuptaxnf_custom_post_opt');

