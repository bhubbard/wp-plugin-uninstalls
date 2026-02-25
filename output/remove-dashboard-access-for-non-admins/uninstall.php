<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rda_access_switch');
delete_site_option('rda_access_switch');
delete_option('rda_access_cap');
delete_site_option('rda_access_cap');
delete_option('rda_enable_profile');
delete_site_option('rda_enable_profile');
delete_option('rda_redirect_url');
delete_site_option('rda_redirect_url');
delete_option('rda_login_message');
delete_site_option('rda_login_message');
delete_option('rda-settings');
delete_site_option('rda-settings');

