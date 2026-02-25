#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'schema_integration'
wp option delete 'wpseo_titles'
wp option delete 'wpseo_taxonomy_meta'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_integration_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_integration_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_integration_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_integration_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_integration_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_integration_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_integration_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_integration_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_integration_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_integration_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_integration_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_integration_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_integration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_integration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_integration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_integration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
