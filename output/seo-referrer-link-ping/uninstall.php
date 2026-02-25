<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_referrer_link_ping_strings');
delete_site_option('seo_referrer_link_ping_strings');
delete_option('seo_referrer_link_ping_version');
delete_site_option('seo_referrer_link_ping_version');

