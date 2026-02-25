<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('template_tw');
delete_site_option('template_tw');
delete_option('widget_tw');
delete_site_option('widget_tw');

