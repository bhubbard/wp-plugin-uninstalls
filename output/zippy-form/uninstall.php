<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zippy_form_base_url');
delete_site_option('zippy_form_base_url');
delete_option('zippy_form_license_key');
delete_site_option('zippy_form_license_key');

