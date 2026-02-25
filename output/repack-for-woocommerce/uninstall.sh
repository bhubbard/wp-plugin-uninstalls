#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'repack_telemetry_optin'
wp option delete 'repack_telemetry_sent'
wp option delete 'repack_telemetry_consent_dismissed'
wp option delete 'repack_start'
wp option delete 'repack_counter'

# Clear Cron Jobs
wp cron event delete 'repack_telemetry'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_repack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_repack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_repack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_repack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_counter'"
