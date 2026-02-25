<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aitch_ref_settings');
delete_site_option('aitch_ref_settings');
delete_option('aitchref_urls');
delete_site_option('aitchref_urls');
delete_option('aitchref_filters_absolute');
delete_site_option('aitchref_filters_absolute');
delete_option('aitchref_filters_relative');
delete_site_option('aitchref_filters_relative');

