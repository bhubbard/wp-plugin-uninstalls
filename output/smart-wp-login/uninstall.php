<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swpl_settings');
delete_site_option('swpl_settings');
delete_option('swpl_version');
delete_site_option('swpl_version');
delete_option('swpl_l');
delete_site_option('swpl_l');
delete_option('swpl_r');
delete_site_option('swpl_r');
delete_option('swpl_rp');
delete_site_option('swpl_rp');

