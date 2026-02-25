#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spost_admin_from_email'
wp option delete 'spost_allowed_level'
wp option delete 'spost_require_email'
wp option delete 'spost_posting_posttype'
wp option delete 'spost_posting_taxonomy'
wp option delete 'spost_posting_status'
wp option delete 'spost_posting_default_user'
wp option delete 'spost_db_version'
wp option delete 'spost_db_build'
wp option delete 'spost_login_button_background'
wp option delete 'spost_login_button_text_color'
wp option delete 'spost_register_button_background'
wp option delete 'spost_register_button_text_color'
wp option delete 'spost_or_button_background'
wp option delete 'spost_or_button_text_color'
wp option delete 'spost_admin_email'
wp option delete 'spost_send_poster_email'
wp option delete 'spost_custom_login_page'
wp option delete 'spost_interval_between_posts'
wp option delete 'spost_log_user_ip'
wp option delete 'spost_version'
wp option delete 'spost_build'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poster_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poster_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poster_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poster_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stranger_posting_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stranger_posting_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stranger_posting_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stranger_posting_email'"
