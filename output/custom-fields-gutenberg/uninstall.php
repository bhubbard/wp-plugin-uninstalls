<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('g7g_cfg_options');
delete_site_option('g7g_cfg_options');
delete_option('g7g-cfg-dismiss-notice');
delete_site_option('g7g-cfg-dismiss-notice');

