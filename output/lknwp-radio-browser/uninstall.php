<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lknwp_player_rewrite_rules');
delete_site_option('lknwp_player_rewrite_rules');

// Delete Transients
delete_transient('lknwp_radio_tags');
delete_site_transient('lknwp_radio_tags');

