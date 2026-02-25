#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'project_rate_calculator_layout_type'
wp option delete 'project_rate_calculator_layout_css'
wp option delete 'project_rate_searchform'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calculator_form_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calculator_form_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calculator_form_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calculator_form_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calculator_form_properties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calculator_form_properties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calculator_form_properties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calculator_form_properties'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calculator_form_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calculator_form_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calculator_form_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calculator_form_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calculator_form_field_properties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calculator_form_field_properties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calculator_form_field_properties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calculator_form_field_properties'"
