<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsdaddbrg_installed_at');
delete_site_option('lsdaddbrg_installed_at');

