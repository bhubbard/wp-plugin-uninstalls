<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('byakuraitmp_option');
delete_site_option('byakuraitmp_option');
delete_option('byakuraitmp_template_ids');
delete_site_option('byakuraitmp_template_ids');

