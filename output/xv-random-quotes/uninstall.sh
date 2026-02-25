#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xv_quotes_default_category_id'
wp option delete 'xv_migration_pending'
wp option delete 'xv_quotes_migrated_v2'
wp option delete 'xv_migration_total'
wp option delete 'xv_quotes_widgets_migrated'
wp option delete 'widget_xv_random_quotes_widget'
wp option delete '_xv_quotes_migrated'
wp option delete 'xv_quotes_needs_migration'
wp option delete 'stray_quotes_options'
wp option delete 'xv_quotes_flush_rewrite_rules'

# Delete Transients
wp transient delete 'xv_migration_error'
wp transient delete 'xv_migration_success'
wp transient delete 'xv_migration_progress'
wp transient delete 'xv_migration_total'
wp transient delete 'xv_migration_offset'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quote_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quote_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quote_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quote_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quote_legacy_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quote_legacy_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quote_legacy_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quote_legacy_id'"
