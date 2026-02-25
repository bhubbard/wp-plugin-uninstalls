#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_email_marketing_initial_activation'
wp option delete 'sg_email_marketing_version'
wp option delete 'sg_email_marketing_update_timestamp'
wp option delete 'sg_email_marketing_token'
wp option delete 'sg_email_marketing_seen'
wp option delete 'sg_email_marketing_token_status'

# Delete Transients
wp transient delete '_sg_email_marketing_installing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_email_marketing_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_email_marketing_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_email_marketing_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_email_marketing_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_email_marketing_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_email_marketing_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_email_marketing_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_email_marketing_groups'"
