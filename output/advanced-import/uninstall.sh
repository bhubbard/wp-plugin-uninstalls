#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'advanced_import_settings_options'
wp option delete 'advanced_import_reset_notice'

# Delete Transients
wp transient delete 'delayed_posts'
wp transient delete 'imported_term_ids'
wp transient delete 'imported_post_ids'
wp transient delete 'post_orphans'
wp transient delete 'content.json'
wp transient delete 'widgets.json'
wp transient delete 'options.json'
wp transient delete 'adi_elementor_data_posts'

# Clear Cron Jobs
wp cron event delete 'advanced_import_weekly_scheduled_events'
wp cron event delete 'advanced_import_daily_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
