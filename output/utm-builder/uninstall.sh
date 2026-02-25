#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sutm_form_data_%' OR option_name LIKE '_site_transient_sutm_form_data_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sutm_link_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sutm_link_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sutm_link_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sutm_link_history'"
