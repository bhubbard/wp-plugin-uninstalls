<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thinkds_discount_strategy');
delete_site_option('thinkds_discount_strategy');
delete_option('thinkds_active_campaigns');
delete_site_option('thinkds_active_campaigns');

// Delete Transients
delete_transient('thinkds_admin_notice');
delete_site_transient('thinkds_admin_notice');

