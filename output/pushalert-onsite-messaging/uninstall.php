<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pa_onsite_messaging_web_id');
delete_site_option('pa_onsite_messaging_web_id');
delete_option('pa_onsite_messaging_plugin_activation');
delete_site_option('pa_onsite_messaging_plugin_activation');

