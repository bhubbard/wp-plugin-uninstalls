<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fergcorp_countdownTimer_version');
delete_site_option('fergcorp_countdownTimer_version');
delete_option('fergcorp_countdownTimer_deleteOneTimeEvents');
delete_site_option('fergcorp_countdownTimer_deleteOneTimeEvents');
delete_option('fergcorp_countdownTimer_timeFormat');
delete_site_option('fergcorp_countdownTimer_timeFormat');
delete_option('fergcorp_countdownTimer_showYear');
delete_site_option('fergcorp_countdownTimer_showYear');
delete_option('fergcorp_countdownTimer_showMonth');
delete_site_option('fergcorp_countdownTimer_showMonth');
delete_option('fergcorp_countdownTimer_showWeek');
delete_site_option('fergcorp_countdownTimer_showWeek');
delete_option('fergcorp_countdownTimer_showDay');
delete_site_option('fergcorp_countdownTimer_showDay');
delete_option('fergcorp_countdownTimer_showHour');
delete_site_option('fergcorp_countdownTimer_showHour');
delete_option('fergcorp_countdownTimer_showMinute');
delete_site_option('fergcorp_countdownTimer_showMinute');
delete_option('fergcorp_countdownTimer_showSecond');
delete_site_option('fergcorp_countdownTimer_showSecond');
delete_option('fergcorp_countdownTimer_stripZero');
delete_site_option('fergcorp_countdownTimer_stripZero');
delete_option('fergcorp_countdownTimer_enableJS');
delete_site_option('fergcorp_countdownTimer_enableJS');
delete_option('fergcorp_countdownTimer_timeSinceTime');
delete_site_option('fergcorp_countdownTimer_timeSinceTime');
delete_option('fergcorp_countdownTimer_titleSuffix');
delete_site_option('fergcorp_countdownTimer_titleSuffix');
delete_option('fergcorp_countdownTimer_enableShortcodeExcerpt');
delete_site_option('fergcorp_countdownTimer_enableShortcodeExcerpt');
delete_option('fergcorp_countdownTimer_oneTimeEvent');
delete_site_option('fergcorp_countdownTimer_oneTimeEvent');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fergcorp_countdownTimer_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('widget_fergcorp_countdown_timer_widget');
delete_site_option('widget_fergcorp_countdown_timer_widget');

