<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catpostfilter_enable_filter');
delete_site_option('catpostfilter_enable_filter');
delete_option('catpostfilter_bg_color');
delete_site_option('catpostfilter_bg_color');
delete_option('catpostfilter_text_color');
delete_site_option('catpostfilter_text_color');
delete_option('catpostfilter_default_view');
delete_site_option('catpostfilter_default_view');

