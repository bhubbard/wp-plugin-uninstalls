#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crmfwc-users-roles'
wp option delete 'crmfwc-email'
wp option delete 'crmfwc-passw'
wp option delete 'wcexd_company_invoice'
wp option delete 'wcexd_private_invoice'
wp option delete 'wcefr_company_invoice'
wp option delete 'wcefr_private_invoice'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crmfwc-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crmfwc-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crmfwc-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crmfwc-id'"
