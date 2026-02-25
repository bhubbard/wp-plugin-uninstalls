#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementinvader_allowed_admins'
wp option delete 'elementinvader_api_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eli_export_%'"
wp option delete 'elementinvader_reviews_installed_on'
wp option delete 'elementinvader_total_open_count'
wp option delete 'winter_mvc_active_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementinvader_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementinvader_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementinvader_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementinvader_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementinvader_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementinvader_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementinvader_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementinvader_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementinvader_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementinvader_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementinvader_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementinvader_reviews_already_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
