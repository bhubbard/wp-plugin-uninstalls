#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afwp_global_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwp_term_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwp_term_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwp_term_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwp_term_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acwp_term_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acwp_term_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acwp_term_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acwp_term_style'"
