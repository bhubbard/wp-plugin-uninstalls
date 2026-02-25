#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fl_login_url'
wp option delete 'fl_login_landing_url'
wp option delete 'fl_register_url'
wp option delete 'fl_profile_url'
wp option delete 'fl_logout_url'
wp option delete 'fl_logout_landing_url'
wp option delete 'fl_bg_color'
wp option delete 'fl_border_color'
wp option delete 'fl_text_color'
wp option delete 'fl_border_width'
wp option delete 'fl_register_display'
wp option delete 'fl_profile_display'
wp option delete 'fl_hover_color'
wp option delete 'fl_float_position'
wp option delete 'fl_profile_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fl_login_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fl_login_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fl_login_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fl_login_display'"
