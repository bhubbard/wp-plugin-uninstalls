<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ref-blocker-list');
delete_site_option('ref-blocker-list');
delete_option('ref-spam-custom-blocks');
delete_site_option('ref-spam-custom-blocks');
delete_option('ref-spam-block-mode');
delete_site_option('ref-spam-block-mode');
delete_option('ref-spam-pro-key');
delete_site_option('ref-spam-pro-key');
delete_option('ref-spam-pro-active');
delete_site_option('ref-spam-pro-active');
delete_option('ref-spam-auto-update');
delete_site_option('ref-spam-auto-update');
delete_option('ref-blocker-updated');
delete_site_option('ref-blocker-updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('dailyCronjob');

