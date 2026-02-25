<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woopra');
delete_site_option('woopra');
delete_option('woopra_auto_tag_commentators');
delete_site_option('woopra_auto_tag_commentators');
delete_option('woopra_ignore_admin');
delete_site_option('woopra_ignore_admin');
delete_option('woopra_track_admin');
delete_site_option('woopra_track_admin');
delete_option('woopra_show_comments');
delete_site_option('woopra_show_comments');
delete_option('woopra_show_searches');
delete_site_option('woopra_show_searches');
delete_option('woopra_api_key');
delete_site_option('woopra_api_key');
delete_option('woopra_analytics_tab');
delete_site_option('woopra_analytics_tab');

