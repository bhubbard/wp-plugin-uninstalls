#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mtfcf7_tooltip_generator'
wp option delete 'mtfcf7_settings'
wp option delete 'mtfcf7_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_mtfcf7_ag_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_mtfcf7_ag_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_mtfcf7_ag_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_mtfcf7_ag_notice'"
