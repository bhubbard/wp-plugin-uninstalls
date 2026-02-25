<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pitchhub_embed_general');
delete_site_option('pitchhub_embed_general');
delete_option('pitchhub_embed_shortcode');
delete_site_option('pitchhub_embed_shortcode');
delete_option('pitchhub_embed_shortcode_admin');
delete_site_option('pitchhub_embed_shortcode_admin');
delete_option('pitchhub_embed_shortcode_site');
delete_site_option('pitchhub_embed_shortcode_site');
delete_option('pitchhub_embed_version');
delete_site_option('pitchhub_embed_version');

