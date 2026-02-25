#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qurio_api_key'
wp option delete 'qurio_api_status'
wp option delete 'qurio_appearance_overlay_color'
wp option delete 'qurio_appearance_overlay_opacity'
wp option delete 'qurio_appearance_popup_delay'
wp option delete 'qurio_appearance_inline_position'
wp option delete 'qurio_overview_campaign_data'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qurio_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qurio_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qurio_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qurio_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qurio_connect_campaign_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qurio_connect_campaign_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qurio_connect_campaign_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qurio_connect_campaign_style'"
