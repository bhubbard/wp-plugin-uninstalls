#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_boxes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tags'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_freshdesk_agents'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_zendesk_agents'"
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vx_teamwork_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vx_teamwork_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vx_teamwork_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vx_teamwork_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vx_zendesk_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vx_zendesk_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vx_zendesk_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vx_zendesk_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
