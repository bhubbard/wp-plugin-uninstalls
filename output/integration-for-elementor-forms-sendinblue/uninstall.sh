#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webtica_sendinblue_option_name'

# Delete Transients
wp transient delete 'sendinblue_saved_custom_attributes'
wp transient delete 'sendinblue_migration_pending'
wp transient delete 'sendinblue_migration_running'
wp transient delete 'sendinblue_migration_notice'
wp transient delete 'sendinblue_migration_missing_attrs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
