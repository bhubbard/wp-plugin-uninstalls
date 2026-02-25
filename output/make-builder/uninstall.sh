#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'make-dismissed-notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'make-dismissed-notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'make-dismissed-notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'make-dismissed-notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ttfmake-dismissed-notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ttfmake-dismissed-notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ttfmake-dismissed-notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ttfmake-dismissed-notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ttfmake_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ttfmake_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ttfmake_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ttfmake_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ttfmake-use-builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ttfmake-use-builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ttfmake-use-builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ttfmake-use-builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ttfmake-section-ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ttfmake-section-ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ttfmake-section-ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ttfmake-section-ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ttfmake_section_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ttfmake_section_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ttfmake_section_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ttfmake_section_%'"
