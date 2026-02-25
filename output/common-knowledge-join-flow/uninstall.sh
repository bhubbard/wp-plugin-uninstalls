#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ck_join_flow_membership_plan_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ck_join_flow_webhook_uuid_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ck_join_flow_webhook_url_%'"
wp option delete 'carbon_custom_sidebars'

# Clear Cron Jobs
wp cron event delete 'ck_join_block_gocardless_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
