<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_Plugin_Shareaholic');
delete_site_option('Activated_Plugin_Shareaholic');
delete_option('shareaholic_has_accepted_tos');
delete_site_option('shareaholic_has_accepted_tos');
delete_option('shareaholic_settings');
delete_site_option('shareaholic_settings');
delete_option('shareaholic_activate_timestamp');
delete_site_option('shareaholic_activate_timestamp');
delete_option('shareaholic_review_dismiss');
delete_site_option('shareaholic_review_dismiss');
delete_option('SexyBookmarks');
delete_site_option('SexyBookmarks');
delete_option('ShareaholicClassicBookmarks');
delete_site_option('ShareaholicClassicBookmarks');
delete_option('ShareaholicRecommendations');
delete_site_option('ShareaholicRecommendations');
delete_option('ShareaholicTopBar');
delete_site_option('ShareaholicTopBar');
delete_option('ShareaholicAnalytics');
delete_site_option('ShareaholicAnalytics');
delete_option('ShareaholicTopbar');
delete_site_option('ShareaholicTopbar');
delete_option('shr_reportupgrade');
delete_site_option('shr_reportupgrade');
delete_option('SHRSBvNum');
delete_site_option('SHRSBvNum');
delete_option('SHRSB_apikey');
delete_site_option('SHRSB_apikey');
delete_option('SEXY_SPONSORS');
delete_site_option('SEXY_SPONSORS');
delete_option('SHRSB_DefaultSprite');
delete_site_option('SHRSB_DefaultSprite');
delete_option('SHRSB_CustomSprite');
delete_site_option('SHRSB_CustomSprite');
delete_option('SexyCustomSprite');
delete_site_option('SexyCustomSprite');
delete_option('SHRSBvNUM');
delete_site_option('SHRSBvNUM');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shareaholic_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('shareaholic_get_or_create_api_key');
delete_site_option('shareaholic_get_or_create_api_key');
delete_option('shareaholic_perform_update');
delete_site_option('shareaholic_perform_update');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('_shr_activation_redirect');
delete_site_transient('_shr_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('shareaholic_remove_transients_hourly');
wp_clear_scheduled_hook('shareaholic_heartbeat');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shareaholic_exclude_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shareaholic_exclude_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shareaholic_exclude_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shareaholic_exclude_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shareaholic_disable_open_graph_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shareaholic_disable_open_graph_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shareaholic_disable_open_graph_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shareaholic_disable_open_graph_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shareaholic_disable_share_buttons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shareaholic_disable_share_buttons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shareaholic_disable_share_buttons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shareaholic_disable_share_buttons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shareaholic_disable_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shareaholic_disable_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shareaholic_disable_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shareaholic_disable_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metakeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metakeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metakeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metakeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_amt_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_amt_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_amt_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_amt_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_amt_news_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_amt_news_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_amt_news_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_amt_news_keywords' ) );

