-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailrelay_auto_sync', 'mailrelay_auto_sync_groups', 'mailrelay_host', 'mailrelay_api_key', 'mailrelay_woocommerce_auto_sync', 'mailrelay_woocommerce_store_id', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

