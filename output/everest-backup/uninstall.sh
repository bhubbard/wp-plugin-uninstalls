#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'everest_backup_enable_plugin_token'
wp option delete 'everest_backup_consent_optin'
wp option delete 'sidebars_widgets'
wp option delete 'woocommerce_permalinks'
wp option delete '_elementor_global_css'
wp option delete 'elementor-custom-breakpoints-files'
wp option delete 'everest_backup_ajax_manual_nonce'
wp option delete 'everest_backup_active_plugins'

# Delete Transients
wp transient delete 'is_restore_completed'
wp transient delete 'everest_backup_consent_skip'
wp transient delete 'everest_backup_wp_cli_express'
wp transient delete 'everest_backup_doing_scheduled_backup'
wp transient delete 'everest_backup_migrate_clone_download'
wp transient delete 'eb_post_restore_token'
wp transient delete 'everest_backup_migrate_clone_download_retry'
wp transient delete 'everest_backup_2fa_checked'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
