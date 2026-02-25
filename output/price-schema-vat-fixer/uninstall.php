<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psvf_use_custom_address');
delete_site_option('psvf_use_custom_address');
delete_option('psvf_default_address');
delete_site_option('psvf_default_address');

