<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deal_or_announcement_with_countdown_timer_timer_color');
delete_site_option('deal_or_announcement_with_countdown_timer_timer_color');
delete_option('deal_or_announcement_with_countdown_timer_text_color');
delete_site_option('deal_or_announcement_with_countdown_timer_text_color');
delete_option('deal_or_announcement_with_countdown_timer_text_align');
delete_site_option('deal_or_announcement_with_countdown_timer_text_align');
delete_option('deal_or_announcement_with_countdown_timer_caption');
delete_site_option('deal_or_announcement_with_countdown_timer_caption');
delete_option('deal_or_announcement_with_countdown_timer_timer_align');
delete_site_option('deal_or_announcement_with_countdown_timer_timer_align');
delete_option('deal_or_announcement_with_countdown_timer_title');
delete_site_option('deal_or_announcement_with_countdown_timer_title');

