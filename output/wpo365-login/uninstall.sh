#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpo365_active_extensions'
wp option delete 'wpo365_options'
wp option delete 'mail_integration_365_plugin_ops'
wp option delete 'wpo365_insights_summary'
wp option delete 'wpo365_current_insights_year'
wp option delete 'wpo365_mail_authorization'
wp option delete 'mail_integration_365_plugin_ops_access_token'
wp option delete 'wpo365_msft_key'
wp option delete 'wpo365_x509_certificates'
wp option delete 'wpo_sync_v2_users_unscheduled'
wp option delete 'wpo365_wpmu_mode'
wp option delete 'wpo365_msft_keys'
wp option delete 'wpo365_nonces'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'wpo365_plugins_updated'
wp transient delete 'wpo365_secrets_expiration_hook_ensured'

# Clear Cron Jobs
wp cron event delete 'wpo_process_unsent_messages'
wp cron event delete 'wpo_check_password_credentials_expiration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userPrincipalName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userPrincipalName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userPrincipalName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userPrincipalName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aadTenantId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aadTenantId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aadTenantId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aadTenantId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpo365_idp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpo365_idp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpo365_idp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpo365_idp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aadObjectId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aadObjectId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aadObjectId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aadObjectId'"
