<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ztbtfg_settings');
delete_site_option('ztbtfg_settings');
delete_option('ztbtfg_build_count');
delete_site_option('ztbtfg_build_count');
delete_option('ztbtfg_last_trigger');
delete_site_option('ztbtfg_last_trigger');

// Delete Transients
delete_transient('ztbtfg_global_time');
delete_site_transient('ztbtfg_global_time');

