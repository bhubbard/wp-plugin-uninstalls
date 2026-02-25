<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pobt_enabled');
delete_site_option('pobt_enabled');
delete_option('pobt_enabled_at');
delete_site_option('pobt_enabled_at');
delete_option('pobt_bypass_key');
delete_site_option('pobt_bypass_key');
delete_option('pobt_retry_after');
delete_site_option('pobt_retry_after');
delete_option('pobt_allow_bots');
delete_site_option('pobt_allow_bots');
delete_option('pobt_bypass_enabled');
delete_site_option('pobt_bypass_enabled');
delete_option('surge_installed');
delete_site_option('surge_installed');

