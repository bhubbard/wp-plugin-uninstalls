<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('r34ps_notification_recipients');
delete_site_option('r34ps_notification_recipients');
delete_option('r34ps_notification_subject');
delete_site_option('r34ps_notification_subject');
delete_option('r34ps_notification_message');
delete_site_option('r34ps_notification_message');
delete_option('r34ps_version');
delete_site_option('r34ps_version');
delete_option('r34ps_previous_version');
delete_site_option('r34ps_previous_version');
delete_option('r34ps_deferred_admin_notices');
delete_site_option('r34ps_deferred_admin_notices');

