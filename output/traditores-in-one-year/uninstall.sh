#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trad_ioy_gen_settings'
wp option delete 'trad_ioy_version'
wp option delete 'trad_ioy_local_css'
wp option delete 'trad_ioy_avail_bible_versions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trad_ioy_activate_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trad_ioy_activate_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trad_ioy_activate_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trad_ioy_activate_shortcodes'"
