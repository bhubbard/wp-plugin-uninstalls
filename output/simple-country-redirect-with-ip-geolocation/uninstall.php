<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redirect_by_country_redirect_enabled');
delete_site_option('redirect_by_country_redirect_enabled');
delete_option('redirect_by_country_redirect_rules');
delete_site_option('redirect_by_country_redirect_rules');
delete_option('redirect_by_country_cookie_days');
delete_site_option('redirect_by_country_cookie_days');

