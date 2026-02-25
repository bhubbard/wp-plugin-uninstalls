#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easypr_show_order_form'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easypr_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easypr_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easypr_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easypr_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easypr_lead_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easypr_lead_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easypr_lead_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easypr_lead_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easypr_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easypr_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easypr_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easypr_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easypr_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easypr_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easypr_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easypr_brand'"
