#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbsync_xero_api'
wp option delete 'wbsync_woo_xero_sync_guid'
wp option delete 'wbsync_xero_con_guid'
wp option delete 'wbsync_xero_sync_active'
wp option delete 'wbsync_woo_xero_taxcodes'
wp option delete 'wbsync_woo_xero_items'
wp option delete 'wbsync_woo_xero_customers'
wp option delete 'wbsync_woo_xero_accounts'
wp option delete 'wbsync_xero_woo_guid'
wp option delete 'wbsync_xero_sync_settings'
wp option delete 'wbsync_woo_qbo_sync_guid'

