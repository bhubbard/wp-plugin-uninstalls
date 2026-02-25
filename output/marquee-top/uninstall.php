<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssmt_marquee_text');
delete_site_option('ssmt_marquee_text');
delete_option('ssmt_marquee_speed');
delete_site_option('ssmt_marquee_speed');
delete_option('ssmt_marquee_url');
delete_site_option('ssmt_marquee_url');
delete_option('ssmt_marquee_bg_color');
delete_site_option('ssmt_marquee_bg_color');
delete_option('ssmt_span_color');
delete_site_option('ssmt_span_color');

