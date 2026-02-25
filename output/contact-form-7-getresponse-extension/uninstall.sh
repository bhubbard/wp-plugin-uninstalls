#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_gs_ext_basics_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_gs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_gs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_gs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_gs_settings'"
