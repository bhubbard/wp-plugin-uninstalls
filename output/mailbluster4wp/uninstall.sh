#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mb4wp_api_options'

# Delete Transients
wp transient delete 'mb4wp_api_connected'
wp transient delete 'mb4wp_api_disconnected'
wp transient delete 'mb4wp_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb4wp_form_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb4wp_form_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb4wp_form_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb4wp_form_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb4wp_form_builder_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb4wp_form_builder_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb4wp_form_builder_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb4wp_form_builder_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb4wp_form_builder_default_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb4wp_form_builder_default_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb4wp_form_builder_default_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb4wp_form_builder_default_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb4wp_form_message_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb4wp_form_message_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb4wp_form_message_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb4wp_form_message_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb4wp_form_appearance_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb4wp_form_appearance_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb4wp_form_appearance_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb4wp_form_appearance_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb4wp_form_settings_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb4wp_form_settings_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb4wp_form_settings_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb4wp_form_settings_options'"
