#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'salesforce2'
wp option delete 'email_sender'
wp option delete 'salesforce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salesforce_lead_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salesforce_lead_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salesforce_lead_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salesforce_lead_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_last_name'"
