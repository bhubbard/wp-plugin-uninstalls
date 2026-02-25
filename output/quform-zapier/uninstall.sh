#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quform_zapier_activated'
wp option delete 'quform_zapier_db_version'
wp option delete 'quform_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quform_zapier_integrations_order_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quform_zapier_integrations_order_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quform_zapier_integrations_order_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quform_zapier_integrations_order_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quform_zapier_integrations_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quform_zapier_integrations_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quform_zapier_integrations_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quform_zapier_integrations_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quform_zapier_integrations_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quform_zapier_integrations_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quform_zapier_integrations_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quform_zapier_integrations_per_page'"
