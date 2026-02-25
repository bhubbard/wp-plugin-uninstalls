#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sudooauth_option_name'
wp option delete 'sudooauth_option_pwd'
wp option delete 'sudooauth_option_host'
wp option delete 'sudooauth_option_cat'
wp option delete 'sudooauth_option_multicat'
wp option delete 'sudooauth_option_limitpost'
wp option delete 'sudooauth_option_uploadfiles'
wp option delete 'sudooauth_option_activeplugin'
wp option delete 'sudooauth_option_link_number'
wp option delete 'sudooauth_option_nofolow_number'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sudo_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sudo_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sudo_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sudo_access'"
