<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TIEexpire_pub');
delete_site_option('TIEexpire_pub');
delete_option('TIEexpire_catsradio');
delete_site_option('TIEexpire_catsradio');
delete_option('TIEtools_notify_poster');
delete_site_option('TIEtools_notify_poster');
delete_option('TIEtools_notify_admin');
delete_site_option('TIEtools_notify_admin');
delete_option('TIEtools_notify_other');
delete_site_option('TIEtools_notify_other');
delete_option('TIEexpire_draft');
delete_site_option('TIEexpire_draft');
delete_option('TIEexpire_pending');
delete_site_option('TIEexpire_pending');
delete_option('TIEexpire_private');
delete_site_option('TIEexpire_private');
delete_option('TIEtools_notify_email');
delete_site_option('TIEtools_notify_email');
delete_option('TIEexpire_catsin');
delete_site_option('TIEexpire_catsin');
delete_option('TIEexpire_catsout');
delete_site_option('TIEexpire_catsout');
delete_option('TIEexpire_catsdays');
delete_site_option('TIEexpire_catsdays');
delete_option('TIEexpire_catsposts');
delete_site_option('TIEexpire_catsposts');
delete_option('TIEexpire_catsviews');
delete_site_option('TIEexpire_catsviews');
delete_option('TIEexpire_catslikes');
delete_site_option('TIEexpire_catslikes');
delete_option('TIEexpire_days');
delete_site_option('TIEexpire_days');
delete_option('TIEexpire_posts');
delete_site_option('TIEexpire_posts');
delete_option('TIEexpire_viewdays');
delete_site_option('TIEexpire_viewdays');
delete_option('TIEexpire_views');
delete_site_option('TIEexpire_views');
delete_option('TIEexpire_likedays');
delete_site_option('TIEexpire_likedays');
delete_option('TIEexpire_likes');
delete_site_option('TIEexpire_likes');

// Clear Cron Jobs
wp_clear_scheduled_hook('my_expiry_job');

