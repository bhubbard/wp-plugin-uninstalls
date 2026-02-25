<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aitasi_subscriber_list');
delete_site_option('aitasi_subscriber_list');
delete_option('aitasi_options');
delete_site_option('aitasi_options');

// Delete Transients
delete_transient('cs-framework-transient');
delete_site_transient('cs-framework-transient');
delete_transient('cs-metabox-transient');
delete_site_transient('cs-metabox-transient');

