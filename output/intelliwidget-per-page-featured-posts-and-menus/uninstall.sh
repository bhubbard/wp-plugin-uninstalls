#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_intelliwidget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intelliwidget_all_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intelliwidget_all_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intelliwidget_all_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intelliwidget_all_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intelliwidget_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intelliwidget_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intelliwidget_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intelliwidget_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intelliwidget_all_titles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intelliwidget_all_titles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intelliwidget_all_titles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intelliwidget_all_titles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intelliwidget_alt_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intelliwidget_alt_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intelliwidget_alt_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intelliwidget_alt_title'"
