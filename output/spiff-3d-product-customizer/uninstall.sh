#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spiff_infrastructure'
wp option delete 'spiff_plugin_was_activated'
wp option delete 'spiff_api_key'
wp option delete 'spiff_api_secret'
wp option delete 'spiff_application_key'
wp option delete 'spiff_show_customer_selections_in_cart'
wp option delete 'spiff_show_preview_images_in_cart'
wp option delete 'spiff_non_bulk_text'
wp option delete 'spiff_font_size'
wp option delete 'spiff_font_weight'
wp option delete 'spiff_text_color'
wp option delete 'spiff_background_color'
wp option delete 'spiff_width'
wp option delete 'spiff_height'
wp option delete 'spiff_customer_portal_button_text'
wp option delete 'spiff_customer_portal_button_font_size'
wp option delete 'spiff_customer_portal_button_font_weight'
wp option delete 'spiff_customer_portal_button_text_color'
wp option delete 'spiff_customer_portal_button_background_color'
wp option delete 'spiff_customer_portal_button_width'
wp option delete 'spiff_customer_portal_button_height'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
