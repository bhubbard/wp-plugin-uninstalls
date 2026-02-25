<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wedok_pop_settings');
delete_site_option('wedok_pop_settings');
delete_option('wepop_disabled_links');
delete_site_option('wepop_disabled_links');

