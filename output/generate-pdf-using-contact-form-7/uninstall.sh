#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_cf7_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_cf7_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_cf7_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_cf7_pdf'"
