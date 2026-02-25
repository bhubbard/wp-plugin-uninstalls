<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpnl_o');
delete_site_option('cpnl_o');

// Delete Transients
delete_transient('cpnl_t_k');
delete_site_transient('cpnl_t_k');

