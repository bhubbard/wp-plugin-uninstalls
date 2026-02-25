#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_onboarded'
wp option delete 'elementor_google_maps_api_key'
wp option delete 'elementor_connect_site_key'

# Delete Transients
wp transient delete 'elementor_core_campaign'
wp transient delete '_wc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_conditions'"
