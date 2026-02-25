#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_inbound_organizer_columns'
wp option delete 'cf7_inbound_organizer_general'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_from_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_from_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_from_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_from_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7io_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7io_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7io_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7io_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7io_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7io_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7io_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7io_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%'"
