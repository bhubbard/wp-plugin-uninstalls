#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecet_multiple_setting'

# Delete Transients
wp transient delete 'ecet_plugin_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tribe_tickets_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tribe_tickets_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tribe_tickets_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tribe_tickets_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tribe_tickets_ar_iac'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tribe_tickets_ar_iac'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tribe_tickets_ar_iac'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tribe_tickets_ar_iac'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_end_date'"
