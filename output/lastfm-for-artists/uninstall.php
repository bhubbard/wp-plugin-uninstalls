<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lfm_fa_cache');
delete_site_option('lfm_fa_cache');
delete_option('lfm_fa_widget');
delete_site_option('lfm_fa_widget');

