<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPE_where_emoji_support');
delete_site_option('WPE_where_emoji_support');
delete_option('WPE_emoji_convert_to');
delete_site_option('WPE_emoji_convert_to');

