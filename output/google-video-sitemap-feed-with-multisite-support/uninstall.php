<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xml_video_sitemap');
delete_site_option('xml_video_sitemap');
delete_option('gn-sitemap-video-feed-mu-version');
delete_site_option('gn-sitemap-video-feed-mu-version');

// Delete Transients
delete_transient('xml_video_sitemap_consulta');
delete_site_transient('xml_video_sitemap_consulta');
delete_transient('apg_video_sitemap_plugin');
delete_site_transient('apg_video_sitemap_plugin');
delete_transient('xml_video_sitemap_procesado');
delete_site_transient('xml_video_sitemap_procesado');
delete_transient('xml_video_sitemap');
delete_site_transient('xml_video_sitemap');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('enviar_ping');

