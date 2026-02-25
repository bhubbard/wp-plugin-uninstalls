<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dlmc_bot_token');
delete_site_option('dlmc_bot_token');
delete_option('dlmc_error_logs');
delete_site_option('dlmc_error_logs');
delete_option('dlmc_members_count');
delete_site_option('dlmc_members_count');

