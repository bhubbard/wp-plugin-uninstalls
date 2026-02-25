#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_cpt_support'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version' OR option_name LIKE '_site_transient_%_version'"
wp transient delete 'auxpfo_plugin_requirements_check'
wp transient delete 'auxels_plugin_requirements_check'
wp transient delete 'auxshp_plugin_requirements_check'
wp transient delete 'auxnew_plugin_requirements_check'
wp transient delete 'auxpro_plugin_requirements_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'release-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'release-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'release-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'release-date'"
