#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formit_installed'
wp option delete 'formit_version'
wp option delete 'formit_news_dashboard_widget_news'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formit_builder_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formit_builder_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formit_builder_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formit_builder_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formit_from_dom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formit_from_dom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formit_from_dom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formit_from_dom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formit_from_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formit_from_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formit_from_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formit_from_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formit_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formit_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formit_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formit_dismissed_notice'"
