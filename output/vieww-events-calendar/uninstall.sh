#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vieww_version'
wp option delete 'vieww_design_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_end'"
