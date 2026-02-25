#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jmgdpr_show_cookie_message'
wp option delete 'jmgdpr_cookie_message'
wp option delete 'jmgdpr_cookie_link_text'
wp option delete 'jmgdpr_cookie_link_href'
wp option delete 'jmgdpr_cookie_ok_text'
wp option delete 'jmgdpr_privacy_checkbox_label'
wp option delete 'jmgdpr_privacy_policy_link'
wp option delete 'jmgdpr_show_privacy_checkbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jmgdpr_privacy_policy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jmgdpr_privacy_policy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jmgdpr_privacy_policy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jmgdpr_privacy_policy'"
