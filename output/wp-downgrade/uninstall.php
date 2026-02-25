<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdg_specific_version_name');
delete_site_option('wpdg_specific_version_name');
delete_option('wpdg_download_url');
delete_site_option('wpdg_download_url');
delete_option('wpdg_edit_download_url');
delete_site_option('wpdg_edit_download_url');

