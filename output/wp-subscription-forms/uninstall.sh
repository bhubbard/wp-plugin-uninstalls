#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsf_plugin_install_date'
wp option delete 'wpsf_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsf_hide_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsf_hide_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsf_hide_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsf_hide_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsf_metabox_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsf_metabox_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsf_metabox_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsf_metabox_details'"
