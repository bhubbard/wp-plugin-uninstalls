<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('soundfaith_embed_sermon_options');
delete_site_option('soundfaith_embed_sermon_options');
delete_option('soundfaith_embed_profile_options');
delete_site_option('soundfaith_embed_profile_options');

