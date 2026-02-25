#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vrffwf_settings'
wp option delete 'vrffwf_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vrffwf_entry_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vrffwf_entry_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vrffwf_entry_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vrffwf_entry_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vrffwf_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vrffwf_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vrffwf_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vrffwf_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vrffwf_field_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vrffwf_field_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vrffwf_field_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vrffwf_field_id'"
