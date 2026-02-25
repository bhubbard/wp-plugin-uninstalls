<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('client_portal_flush_rewrite_rules_flag');
delete_site_option('client_portal_flush_rewrite_rules_flag');
delete_option('cp_activation_date_time');
delete_site_option('cp_activation_date_time');
delete_option('cp_notice_pb_dimiss');
delete_site_option('cp_notice_pb_dimiss');

