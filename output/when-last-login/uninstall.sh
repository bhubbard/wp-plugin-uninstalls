#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wll_settings'
wp option delete 'wll_current_version'
wp option delete 'wll_notice_hide'
wp option delete 'wll_notice_hide_1'
wp option delete 'wll_notice_hide_2'

# Delete Transients
wp transient delete 'when_last_login_add_ons_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'when_last_login_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'when_last_login_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'when_last_login_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'when_last_login_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wll_consent_to_track'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wll_consent_to_track'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wll_consent_to_track'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wll_consent_to_track'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wll_consent_to_track_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wll_consent_to_track_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wll_consent_to_track_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wll_consent_to_track_date'"
