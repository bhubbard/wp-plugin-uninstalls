<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trs_sticky_notice_text');
delete_site_option('trs_sticky_notice_text');
delete_option('trs_sticky_notice_theme');
delete_site_option('trs_sticky_notice_theme');
delete_option('trs_sticky_notice_position');
delete_site_option('trs_sticky_notice_position');
delete_option('trs_sticky_notice_font_size');
delete_site_option('trs_sticky_notice_font_size');

