#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ga_profile'
wp option delete 'wp_headmaster_ga_choice'
wp option delete 'wp_headmaster_favicon'
wp option delete 'wp_headmaster_touch_icon'
wp option delete 'wp_headmaster_google_font'
wp option delete 'wp_headmaster_typekit'
wp option delete 'wp_headmaster_edgewebfonts'
wp option delete 'wp_headmaster_jquery_choice'
wp option delete 'wp_headmaster_jquery_google_version'
wp option delete 'wp_headmaster_respondjs'
wp option delete 'wphm_modernizr'
wp option delete 'inline_styles'
wp option delete 'wp_headmaster_meta_author_auto'
wp option delete 'wp_headmaster_format_detection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_headmaster_js_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_headmaster_js_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_headmaster_js_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_headmaster_js_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_headmaster_css_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_headmaster_css_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_headmaster_css_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_headmaster_css_value_key'"
