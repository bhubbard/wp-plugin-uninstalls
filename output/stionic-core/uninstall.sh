#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stionic-categories-hide'
wp option delete 'stionic_onesignal'
wp option delete 'stionic_categories'
wp option delete 'stionic_settings'
wp option delete 'stionic_media'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stionic_post_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stionic_post_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stionic_post_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stionic_post_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stionic_exclude_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stionic_exclude_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stionic_exclude_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stionic_exclude_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_in_application'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_in_application'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_in_application'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_in_application'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stionic_future_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stionic_future_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stionic_future_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stionic_future_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stionic_required_rewards_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stionic_required_rewards_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stionic_required_rewards_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stionic_required_rewards_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipa_disable_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipa_disable_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipa_disable_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipa_disable_ads'"
