<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inctchatWidgetOptions');
delete_site_option('inctchatWidgetOptions');
delete_option('inctchatwidget_version');
delete_site_option('inctchatwidget_version');

