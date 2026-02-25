<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmr-outputbuffering');
delete_site_option('mmr-outputbuffering');
delete_option('mmr-nomergecss');
delete_site_option('mmr-nomergecss');
delete_option('mmr-nocheckcssimports');
delete_site_option('mmr-nocheckcssimports');
delete_option('mmr-nocheckjsmodules');
delete_site_option('mmr-nocheckjsmodules');
delete_option('mmr-nomergejs');
delete_site_option('mmr-nomergejs');
delete_option('mmr-nocssmin');
delete_site_option('mmr-nocssmin');
delete_option('mmr-nojsmin');
delete_site_option('mmr-nojsmin');
delete_option('mmr-http2push');
delete_site_option('mmr-http2push');
delete_option('mmr-http2push-css');
delete_site_option('mmr-http2push-css');
delete_option('mmr-http2push-js');
delete_site_option('mmr-http2push-js');
delete_option('mmr-gzip');
delete_site_option('mmr-gzip');
delete_option('mmr-ignore');
delete_site_option('mmr-ignore');
delete_option('mmr-global-styles');
delete_site_option('mmr-global-styles');
delete_option('mmr-merge-inline');
delete_site_option('mmr-merge-inline');

// Clear Cron Jobs
wp_clear_scheduled_hook('mmr_minify_check');
wp_clear_scheduled_hook('mmr_minify');

