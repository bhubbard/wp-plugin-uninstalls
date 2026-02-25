#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7cl_conditional_load'
wp option delete 'cf7cl_archive'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7cl_checkbox_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7cl_checkbox_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7cl_checkbox_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7cl_checkbox_value'"
