<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kainoslt_woofeed_last_run');
delete_site_option('kainoslt_woofeed_last_run');
delete_option('kainoslt_woofeed_settings');
delete_site_option('kainoslt_woofeed_settings');

// Delete Transients
delete_transient('kainoslt_woofeed_regen_pending');
delete_site_transient('kainoslt_woofeed_regen_pending');

