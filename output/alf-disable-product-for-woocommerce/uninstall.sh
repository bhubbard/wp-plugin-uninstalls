#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alf_dp_button_text'
wp option delete 'alf_dp_msg_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alf_dp_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alf_dp_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alf_dp_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alf_dp_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alf_dp_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alf_dp_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alf_dp_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alf_dp_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alf_dp_btn_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alf_dp_btn_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alf_dp_btn_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alf_dp_btn_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alf_dp_msg_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alf_dp_msg_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alf_dp_msg_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alf_dp_msg_text'"
