<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redirect_txt_rules');
delete_site_option('redirect_txt_rules');
delete_option('redirect_txt_logs');
delete_site_option('redirect_txt_logs');
delete_option('redirect_txt_settings');
delete_site_option('redirect_txt_settings');

