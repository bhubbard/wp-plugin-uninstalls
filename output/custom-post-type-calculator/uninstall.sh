#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'item_admin_email'
wp option delete 'item_surface_label'
wp option delete 'item_measurement_label'
wp option delete 'item_calculate_button_label'
wp option delete 'item_result_label'
wp option delete 'item_contact_section_title'
wp option delete 'item_contact_button_label'
wp option delete 'item_currency'
wp option delete 'item_show_quote'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_value'"
