<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voicethreadautoembed_player_width');
delete_site_option('voicethreadautoembed_player_width');
delete_option('voicethreadautoembed_player_height');
delete_site_option('voicethreadautoembed_player_height');

