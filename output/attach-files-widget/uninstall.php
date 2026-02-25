<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_ex_attachments');
delete_site_option('widget_ex_attachments');
delete_option('widget_widget_ex_attachments');
delete_site_option('widget_widget_ex_attachments');

