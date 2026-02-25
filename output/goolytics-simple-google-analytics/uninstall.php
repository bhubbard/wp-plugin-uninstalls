<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goolytics_web_property_id');
delete_site_option('goolytics_web_property_id');
delete_option('goolytics_anonymize_ip');
delete_site_option('goolytics_anonymize_ip');
delete_option('goolytics_usercentrics_support');
delete_site_option('goolytics_usercentrics_support');

