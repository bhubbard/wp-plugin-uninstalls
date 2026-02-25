<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailrelay_auto_sync');
delete_site_option('mailrelay_auto_sync');
delete_option('mailrelay_auto_sync_groups');
delete_site_option('mailrelay_auto_sync_groups');
delete_option('mailrelay_host');
delete_site_option('mailrelay_host');
delete_option('mailrelay_api_key');
delete_site_option('mailrelay_api_key');
delete_option('mailrelay_woocommerce_auto_sync');
delete_site_option('mailrelay_woocommerce_auto_sync');
delete_option('mailrelay_woocommerce_store_id');
delete_site_option('mailrelay_woocommerce_store_id');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

