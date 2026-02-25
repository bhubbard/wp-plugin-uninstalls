#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CJAffiliate_plugin_export'
wp option delete 'CJAffiliate_plugin_exportTransfer'
wp option delete 'option_export_name'

# Clear Cron Jobs
wp cron event delete 'cron_cj_export'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
