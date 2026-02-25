<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gn-sitemap-image-feed-mu-version');
delete_site_option('gn-sitemap-image-feed-mu-version');

// Delete Transients
delete_transient('xml_sitemap_image');
delete_site_transient('xml_sitemap_image');
delete_transient('apg_image_sitemap_plugin');
delete_site_transient('apg_image_sitemap_plugin');

// Clear Cron Jobs
wp_clear_scheduled_hook('enviar_ping');

