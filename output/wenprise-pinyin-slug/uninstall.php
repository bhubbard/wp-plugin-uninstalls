<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprs_pinyin_slug_version');
delete_site_option('wprs_pinyin_slug_version');
delete_option('wprs_pinyin_slug');
delete_site_option('wprs_pinyin_slug');

