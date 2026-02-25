<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustedshops_scriptid');
delete_site_option('trustedshops_scriptid');
delete_option('trustedshops_smartdataprotector');
delete_site_option('trustedshops_smartdataprotector');

