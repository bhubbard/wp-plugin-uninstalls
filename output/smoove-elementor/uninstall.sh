#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smef_debug_log'
wp option delete 'smef_debug_mode'
wp option delete 'smef_api_key'
wp option delete 'smef_contact_unsubscribed_action'
wp option delete 'smef_contact_deleted_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smef_form_validation_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smef_form_validation_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smef_form_validation_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smef_form_validation_results'"
