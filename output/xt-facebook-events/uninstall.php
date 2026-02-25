<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xtfe_user_token_options');
delete_site_option('xtfe_user_token_options');
delete_option('xtfe_transient_keys');
delete_site_option('xtfe_transient_keys');
delete_option('xtfe_fb_authorize_user');
delete_site_option('xtfe_fb_authorize_user');
delete_option('xtfe_fb_user_pages');
delete_site_option('xtfe_fb_user_pages');

// Delete Transients
delete_transient('xtfe_facebook_access_token');
delete_site_transient('xtfe_facebook_access_token');

