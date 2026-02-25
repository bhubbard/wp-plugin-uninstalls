#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popup_overlay_color'
wp option delete 'popup_border_radius'
wp option delete 'popup_box_shadow'
wp option delete 'popup_close_button_size'
wp option delete 'popup_close_button_radius'
wp option delete 'popup_close_button_alignment'
wp option delete 'popupfe_redirect_on_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_popup_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_popup_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_popup_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_popup_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_popup_show_on_load'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_popup_show_on_load'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_popup_show_on_load'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_popup_show_on_load'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_popup_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_popup_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_popup_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_popup_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_popup_show_on_scroll'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_popup_show_on_scroll'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_popup_show_on_scroll'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_popup_show_on_scroll'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_popup_scroll_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_popup_scroll_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_popup_scroll_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_popup_scroll_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_popup_exit_intent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_popup_exit_intent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_popup_exit_intent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_popup_exit_intent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_exit_intent_display_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_exit_intent_display_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_exit_intent_display_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_exit_intent_display_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_trigger_selector_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_trigger_selector_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_trigger_selector_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_trigger_selector_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_trigger_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_trigger_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_trigger_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_trigger_selector'"
