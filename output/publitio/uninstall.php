<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('publitio_default_player_id');
delete_site_option('publitio_default_player_id');
delete_option('publitio_key');
delete_site_option('publitio_key');
delete_option('publitio_secret');
delete_site_option('publitio_secret');

// Delete Transients
delete_transient('publitio_wordpress_data');
delete_site_transient('publitio_wordpress_data');
delete_transient('publitio_players');
delete_site_transient('publitio_players');

