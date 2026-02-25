<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartdlre_timer_seconds');
delete_site_option('smartdlre_timer_seconds');
delete_option('smartdlre_ad_code');
delete_site_option('smartdlre_ad_code');
delete_option('smartdlre_redirect_slug');
delete_site_option('smartdlre_redirect_slug');

