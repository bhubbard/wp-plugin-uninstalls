<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pusherfcm-settings-state');
delete_site_option('pusherfcm-settings-state');
delete_option('pusherfcm-settings-key');
delete_site_option('pusherfcm-settings-key');
delete_option('pusherfcm-settings-id');
delete_site_option('pusherfcm-settings-id');
delete_option('pusherfcm-settings-topic');
delete_site_option('pusherfcm-settings-topic');
delete_option('pusherfcm-settings-msg');
delete_site_option('pusherfcm-settings-msg');
delete_option('pusherfcm-ex-pusherPost');
delete_site_option('pusherfcm-ex-pusherPost');
delete_option('pusherfcm-ex-secret');
delete_site_option('pusherfcm-ex-secret');
delete_option('pusherfcm-ex-api');
delete_site_option('pusherfcm-ex-api');

