#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conscent_client_id'
wp option delete 'conscent_sdk_url'
wp option delete 'conscent_paywall_category'
wp option delete 'conscent_api_url'
wp option delete 'conscent_api_key'
wp option delete 'conscent_api_secret'
wp option delete 'conscent_after_logout'
wp option delete 'conscent_after_login'
wp option delete 'conscent_theme_location'
wp option delete 'conscent_content_visibility'
wp option delete 'conscent_default_name'
wp option delete 'conscent_amp_sdk_url'
wp option delete 'conscent_amp_api_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conscent_post_content_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conscent_post_content_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conscent_post_content_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conscent_post_content_visibility'"
