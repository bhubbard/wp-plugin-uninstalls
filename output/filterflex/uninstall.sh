#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filterflex_settings'

# Delete Transients
wp transient delete 'filterflex_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filterflex_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filterflex_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filterflex_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filterflex_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filterflex_output_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filterflex_output_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filterflex_output_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filterflex_output_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filterflex_transformations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filterflex_transformations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filterflex_transformations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filterflex_transformations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filterflex_apply_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filterflex_apply_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filterflex_apply_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filterflex_apply_area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filterflex_location_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filterflex_location_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filterflex_location_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filterflex_location_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filterflex_filterable_element'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filterflex_filterable_element'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filterflex_filterable_element'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filterflex_filterable_element'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filterflex_context_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filterflex_context_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filterflex_context_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filterflex_context_settings'"
