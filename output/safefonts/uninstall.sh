#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chrmrtns_safefonts_max_file_size'
wp option delete 'chrmrtns_safefonts_allowed_types'
wp option delete 'chrmrtns_safefonts_preload_fonts'
wp option delete 'chrmrtns_safefonts_delete_data_on_uninstall'
wp option delete 'chrmrtns_safefonts_version'
wp option delete 'safefonts_version'
wp option delete 'chrmrtns_safefonts_migration_notice'
wp option delete 'chrmrtns_safefonts_family_folders_migrated_count'
wp option delete 'chrmrtns_safefonts_directory_error'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_safefonts_fonts_list_v%' OR option_name LIKE '_site_transient_safefonts_fonts_list_v%'"

