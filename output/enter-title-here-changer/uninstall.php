<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ethc_settings');
delete_site_option('ethc_settings');
delete_option('ethc_placeholders');
delete_site_option('ethc_placeholders');

