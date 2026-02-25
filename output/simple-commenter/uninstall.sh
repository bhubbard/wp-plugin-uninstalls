#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simco_account_info'
wp option delete 'simco_integration_token'
wp option delete 'simco_project_id'
wp option delete 'simco_domain_id'
wp option delete 'simco_settings'
wp option delete 'simco_enabled_roles'
wp option delete 'simco_auto_sync_clients'
wp option delete 'simco_admin_roles'
wp option delete 'simco_last_seen_todo_count'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_simco_synced_user_%' OR option_name LIKE '_site_transient_simco_synced_user_%'"
wp transient delete 'simco_new_comments_count'
wp transient delete 'simco_account_cache'
wp transient delete 'simco_domains_cache'

