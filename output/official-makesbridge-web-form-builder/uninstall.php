<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmks_webforms_userinfo');
delete_site_option('wpmks_webforms_userinfo');
delete_option('wpmks_webforms_usercounter');
delete_site_option('wpmks_webforms_usercounter');

