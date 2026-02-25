#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpda-builder-conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpda-builder-conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpda-builder-conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpda-builder-conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpda-builder-container'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpda-builder-container'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpda-builder-container'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpda-builder-container'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpda-builder-active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpda-builder-active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpda-builder-active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpda-builder-active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
