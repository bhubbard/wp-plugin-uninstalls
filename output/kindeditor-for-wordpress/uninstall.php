<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ke_auto_highlight');
delete_site_option('ke_auto_highlight');
delete_option('ke_highlight_type');
delete_site_option('ke_highlight_type');

