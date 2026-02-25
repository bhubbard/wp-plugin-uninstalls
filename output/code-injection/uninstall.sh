#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ci_unsafe_widgets_shortcodes'
wp option delete 'ci_unsafe_widgets_php'
wp option delete 'ci_unsafe_ignore_keys'
wp option delete 'ci_unsafe_keys'
wp option delete 'ci_code_injection_allow_shortcode'
wp option delete 'ci_code_injection_cache_max_age'
wp option delete 'ci_code_injection_db_version'
wp option delete 'ci_code_injection_role_version'
wp option delete 'ci_role_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'code_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'code_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'code_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'code_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'code_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'code_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'code_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'code_slug'"
