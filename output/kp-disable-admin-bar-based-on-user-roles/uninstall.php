<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpdab_disable_admin_bar_roles');
delete_site_option('kpdab_disable_admin_bar_roles');

