<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('donate_ribbon_url');
delete_site_option('donate_ribbon_url');
delete_option('donate_ribbon_title');
delete_site_option('donate_ribbon_title');
delete_option('donate_ribbon_user_offset');
delete_site_option('donate_ribbon_user_offset');
delete_option('donate_ribbon_admin_offset');
delete_site_option('donate_ribbon_admin_offset');

