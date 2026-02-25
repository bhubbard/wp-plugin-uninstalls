#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordproof_oauth'
wp option delete 'wordproof_wsfy'
wp option delete 'wordproof_hide_certificate_home'
wp option delete 'wordproof_certificate_text'
wp option delete 'wordproof_settings'
wp option delete 'wpseo'
wp option delete 'wordproof_migration_200_completed'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wordproof_last_timestamped_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wordproof_last_timestamped_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wordproof_last_timestamped_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wordproof_last_timestamped_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wordproof_timestamp_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wordproof_timestamp_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wordproof_timestamp_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wordproof_timestamp_data'"
