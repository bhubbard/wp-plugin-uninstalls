#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_slugs_manager_plugin_version'
wp option delete 'alg_remove_old_slugs_on_save_post_enabled'
wp option delete 'alg_remove_old_slugs_cron_interval'
wp option delete 'alg_sm_regenerate_slugs_post_types'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'alg_remove_old_slugs_cron'

