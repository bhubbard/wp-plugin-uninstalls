<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('switch_jq_version_version');
delete_site_option('switch_jq_version_version');
delete_option('switch_jq_version_cdn');
delete_site_option('switch_jq_version_cdn');
delete_option('switch_jq_version_customise_url');
delete_site_option('switch_jq_version_customise_url');

