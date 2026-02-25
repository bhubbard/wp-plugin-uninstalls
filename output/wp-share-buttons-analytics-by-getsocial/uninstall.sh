#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gs-popup-showed'
wp option delete 'gs-api-key'
wp option delete 'gs-place'
wp option delete 'gs-posts-page'
wp option delete 'gs-place-follow'
wp option delete 'gs-pro'
wp option delete 'gs-user-email'
wp option delete 'gs-identifier'
wp option delete 'gs-apps'
wp option delete 'gs-ask-review'
wp option delete 'gs-has-subscriptions'
wp option delete 'gs-alert-msg'
wp option delete 'gs-alert-utm'
wp option delete 'gs-alert-cta'
wp option delete 'gs-lang'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-network-fb'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-network-tw'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-network-pn'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-network-gp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-counter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-position'"
wp option delete 'gs-custom-expression-active'
wp option delete 'gs-custom-expression-position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_meta_getsocialio_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_meta_getsocialio_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_meta_getsocialio_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_meta_getsocialio_hide'"
