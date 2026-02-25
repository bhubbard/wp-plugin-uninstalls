<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ftf_fediverse_embeds_version');
delete_site_option('ftf_fediverse_embeds_version');
delete_option('ftf_fediverse_embeds_deleted_posts');
delete_site_option('ftf_fediverse_embeds_deleted_posts');
delete_option('ftf_fediverse_embeds_theme');
delete_site_option('ftf_fediverse_embeds_theme');
delete_option('ftf_fediverse_embeds_data_refresh_enabled');
delete_site_option('ftf_fediverse_embeds_data_refresh_enabled');
delete_option('ftf_fediverse_embeds_data_refresh_minutes');
delete_site_option('ftf_fediverse_embeds_data_refresh_minutes');
delete_option('ftf_fediverse_embeds_show_metrics');
delete_site_option('ftf_fediverse_embeds_show_metrics');
delete_option('ftf_fediverse_embeds_show_post_labels');
delete_site_option('ftf_fediverse_embeds_show_post_labels');
delete_option('ftf_fediverse_embeds_include_bootstrap_styles');
delete_site_option('ftf_fediverse_embeds_include_bootstrap_styles');
delete_option('ftf_fediverse_embeds_custom_styles');
delete_site_option('ftf_fediverse_embeds_custom_styles');
delete_option('ftf_fediverse_embeds_archival_mode');
delete_site_option('ftf_fediverse_embeds_archival_mode');

