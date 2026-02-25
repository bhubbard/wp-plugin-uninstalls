#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acafs_enable_persistent_uploads'
wp option delete 'acafs_disable_address_book'
wp option delete 'acafs_rename_flamingo'
wp option delete 'acafs_default_flamingo_page'
wp option delete 'acafs_version'
wp option delete 'acafs_display_fields'

# Delete Transients
wp transient delete 'acafs_import_started'
wp transient delete 'acafs_import_success'
wp transient delete 'acafs_export_file'
wp transient delete 'acafs_export_success'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_field_your-message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_field_your-message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_field_your-message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_field_your-message'"
