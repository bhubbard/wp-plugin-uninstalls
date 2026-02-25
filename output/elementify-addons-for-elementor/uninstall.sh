#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementify_addons_for_elementor_object_options'
wp option delete 'elementify_addons_for_elementor_activation_redirect'
wp option delete 'elementify_addons_for_elementor_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
