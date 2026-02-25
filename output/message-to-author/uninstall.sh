#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'm2a_after_post'
wp option delete 'm2a_allow_visitor'
wp option delete 'm2a_layout'
wp option delete 'm2a_style'
wp option delete 'm2a_labels'
wp option delete 'm2a_captcha_flag'
wp option delete 'm2a_captcha_conf'
wp option delete 'm2a_mail_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message'"
