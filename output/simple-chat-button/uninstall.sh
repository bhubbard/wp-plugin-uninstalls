#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scb_button_status'
wp option delete 'scb_whatsapp_number'
wp option delete 'scb_whatsapp_chat_text'
wp option delete 'scb_button_text'
wp option delete 'scb_button_target'
wp option delete 'scb_button_position'
wp option delete 'scb_button_z_index'
wp option delete 'scb_desktop_link_type'
wp option delete 'scb_desktop_bottom_margin'
wp option delete 'scb_tablet_bottom_margin'
wp option delete 'scb_mobile_bottom_margin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scb_button_hide_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scb_button_hide_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scb_button_hide_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scb_button_hide_status'"
