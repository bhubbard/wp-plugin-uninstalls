#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sailthru_content_settings'
wp option delete 'sailthru_setup_complete'
wp option delete 'sailthru_setup_options'
wp option delete 'sailthru_plugin_version'
wp option delete 'sailthru_forms_options'
wp option delete 'sailthru_forms_key'
wp option delete 'sailthru_concierge_options'
wp option delete 'sailthru_scout_options'
wp option delete 'sailthru_override_wp_mail'
wp option delete 'sailthru_integrations_options'
wp option delete 'sailthru_api_validated'
wp option delete 'sailthru_settings'
wp option delete 'sailthru_customfields_order'
wp option delete 'sailthru_customfield_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sailthru_post_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sailthru_post_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sailthru_post_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sailthru_post_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sailthru_meta_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sailthru_meta_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sailthru_meta_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sailthru_meta_tags'"
