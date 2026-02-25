<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('anc_6310_wp_footer_exist');
delete_site_option('anc_6310_wp_footer_exist');

