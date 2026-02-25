<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptelegram_login_ver');
delete_site_option('wptelegram_login_ver');
delete_option('wptelegram_login');
delete_site_option('wptelegram_login');

