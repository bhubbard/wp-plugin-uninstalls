#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spfw_version'
wp option delete 'woocommerce_version'
wp option delete 'spfw_empty_behavior'

# Delete Transients
wp transient delete '_spfw_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spfw_related_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spfw_related_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spfw_related_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spfw_related_ids'"
