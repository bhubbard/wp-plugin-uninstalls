#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailrelay_auto_sync'
wp option delete 'mailrelay_auto_sync_groups'
wp option delete 'mailrelay_host'
wp option delete 'mailrelay_api_key'
wp option delete 'mailrelay_woocommerce_auto_sync'
wp option delete 'mailrelay_woocommerce_store_id'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

