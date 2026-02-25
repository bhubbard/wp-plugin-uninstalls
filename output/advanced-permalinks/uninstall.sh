#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced_permalinks_cache'
wp option delete 'advanced_permalinks_settings'
wp option delete 'advanced_permalinks_posts'
wp option delete 'advanced_permalinks_migration'
wp option delete 'advanced_permalinks_categories'
wp option delete 'advanced_permalinks_migration_rule'

