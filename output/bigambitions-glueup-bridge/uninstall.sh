#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glueup_login_restrict_site'
wp option delete 'glueup_login_private_key'
wp option delete 'glueup_login_public_key'
wp option delete 'glueup_login_org_name'
wp option delete 'glueup_login_delete_on_uninstall'
wp option delete 'glueup_login_allowed_statuses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'glueup_member_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'glueup_member_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'glueup_member_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'glueup_member_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'glueup_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'glueup_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'glueup_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'glueup_company_name'"
