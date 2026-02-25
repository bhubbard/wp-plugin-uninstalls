#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'schema_option_name'
wp option delete 'schema_option_name_genesis'
wp option delete 'schema_option_name_license'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_HunchSchema-Markup-%' OR option_name LIKE '_site_transient_HunchSchema-Markup-%'"
wp transient delete '_welcome_screen_activation_redirect'
wp transient delete 'hunch_schema_delete_transient_cache_success'
wp transient delete 'hunch_schema_delete_transient_cache_failure'

# Clear Cron Jobs
wp cron event delete 'schema_app_cron_resource_from_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_HunchSchemaType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_HunchSchemaType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_HunchSchemaType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_HunchSchemaType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_HunchSchemaMarkup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_HunchSchemaMarkup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_HunchSchemaMarkup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_HunchSchemaMarkup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_HunchSchemaDisableMarkup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_HunchSchemaDisableMarkup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_HunchSchemaDisableMarkup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_HunchSchemaDisableMarkup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_HunchSchemaEnableMarkup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_HunchSchemaEnableMarkup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_HunchSchemaEnableMarkup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_HunchSchemaEnableMarkup'"
