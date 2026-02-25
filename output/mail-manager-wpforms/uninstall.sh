#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmwpf_get_admin_style_settings'

# Delete Transients
wp transient delete 'mmwpf_dependency'
wp transient delete 'mmwpf_active_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mmwpf_entries_columns_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mmwpf_entries_columns_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mmwpf_entries_columns_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mmwpf_entries_columns_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'entries_table_per_page_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'entries_table_per_page_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'entries_table_per_page_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'entries_table_per_page_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmwpf_install_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmwpf_install_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmwpf_install_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmwpf_install_time'"
