#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_salesmate_domain'
wp option delete 'cf7_salesmate_accesskey'
wp option delete 'cf7_salesmate_privatekey'
wp option delete 'cf7_salesmate_token'
wp option delete 'my_cf7_salesmate_forms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enabledeal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enabledeal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enabledeal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enabledeal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'record'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'record'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'record'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'record'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'contact_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'contact_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'contact_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'contact_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'dealsalesmate_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'dealsalesmate_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'dealsalesmate_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'dealsalesmate_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dealsalesmate_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dealsalesmate_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dealsalesmate_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dealsalesmate_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dealsalesmate_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dealsalesmate_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dealsalesmate_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dealsalesmate_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dealsalesmate_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dealsalesmate_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dealsalesmate_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dealsalesmate_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dealsalesmate_pipeline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dealsalesmate_pipeline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dealsalesmate_pipeline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dealsalesmate_pipeline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dealsalesmate_stage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dealsalesmate_stage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dealsalesmate_stage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dealsalesmate_stage'"
