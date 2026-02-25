<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtw_responsive_twitter_widget');
delete_site_option('rtw_responsive_twitter_widget');

