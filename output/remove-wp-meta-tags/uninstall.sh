#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ehf_plugin_dismiss_donate_notice'
wp option delete 'ehf_plugin_no_thanks_donate_notice'
wp option delete 'ehf_plugin_dismissed_time_donate'
wp option delete 'ehf_plugin_installed_time_donate'
wp option delete 'ehf_plugin_dismiss_rating_notice'
wp option delete 'ehf_plugin_no_thanks_rating_notice'
wp option delete 'ehf_plugin_dismissed_time'
wp option delete 'ehf_plugin_installed_time'
wp option delete 'rm_plugin_global_settings'

# Delete Transients
wp transient delete 'ehf-admin-notice-on-activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rm_header_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rm_header_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rm_header_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rm_header_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rm_header_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rm_header_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rm_header_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rm_header_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rm_footer_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rm_footer_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rm_footer_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rm_footer_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rm_footer_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rm_footer_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rm_footer_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rm_footer_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rm_body_open_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rm_body_open_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rm_body_open_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rm_body_open_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rm_body_open_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rm_body_open_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rm_body_open_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rm_body_open_disable'"
