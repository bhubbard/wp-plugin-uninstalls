<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vg_post_embeds_settings');
delete_site_option('vg_post_embeds_settings');
delete_option('postembeds_settings');
delete_site_option('postembeds_settings');

