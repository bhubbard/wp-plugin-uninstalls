<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PinyinPermalink_separator');
delete_site_option('PinyinPermalink_separator');
delete_option('PinyinPermalink_fullword');
delete_site_option('PinyinPermalink_fullword');
delete_option('PinyinPermalink_length');
delete_site_option('PinyinPermalink_length');

