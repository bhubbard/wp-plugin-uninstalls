#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-display-settings'"
wp option delete 'demo-radio'
wp option delete 'rml_installdate'
wp option delete 'rml_supported'
wp option delete 'rml_save_for_later_page_id'
wp option delete 'read-me-later-settings'
wp option delete 'read-me-later-display-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rml_saved_for_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rml_saved_for_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rml_saved_for_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rml_saved_for_later'"
