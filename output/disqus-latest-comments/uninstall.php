<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disqus_shortname');
delete_site_option('disqus_shortname');
delete_option('disqus_shortname_old');
delete_site_option('disqus_shortname_old');
delete_option('num_items');
delete_site_option('num_items');
delete_option('num_items_old');
delete_site_option('num_items_old');
delete_option('hide_avatars');
delete_site_option('hide_avatars');
delete_option('hide_avatars_old');
delete_site_option('hide_avatars_old');
delete_option('hide_moderator');
delete_site_option('hide_moderator');
delete_option('hide_moderator_old');
delete_site_option('hide_moderator_old');
delete_option('avatar_size');
delete_site_option('avatar_size');
delete_option('avatar_size_old');
delete_site_option('avatar_size_old');
delete_option('excerpt_length');
delete_site_option('excerpt_length');
delete_option('excerpt_length_old');
delete_site_option('excerpt_length_old');
delete_option('style');
delete_site_option('style');
delete_option('style_old');
delete_site_option('style_old');
delete_option('disqus_custom_css');
delete_site_option('disqus_custom_css');
delete_option('disqus_custom_css_old');
delete_site_option('disqus_custom_css_old');
delete_option('bypass_cache');
delete_site_option('bypass_cache');
delete_option('bypass_cache_old');
delete_site_option('bypass_cache_old');
delete_option('disqus_target_blank');
delete_site_option('disqus_target_blank');
delete_option('disqus_target_blank_old');
delete_site_option('disqus_target_blank_old');
delete_option('itsg_disqus_lastest_comments_addon_settings');
delete_site_option('itsg_disqus_lastest_comments_addon_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_itsg_dlc_cache_%', '_site_transient_itsg_dlc_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

