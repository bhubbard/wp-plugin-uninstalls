#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icbscbks_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_key_icbscbks_mb_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_key_icbscbks_mb_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_key_icbscbks_mb_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_key_icbscbks_mb_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_key_icbscbks_mb_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_key_icbscbks_mb_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_key_icbscbks_mb_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_key_icbscbks_mb_js'"
