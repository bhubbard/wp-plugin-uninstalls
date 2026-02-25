#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easypanel_offer_showcase_plugin_language'
wp option delete 'easypanel_offer_showcase_quiz_activation_date'
wp option delete 'easypanel_offer_showcase_primary_color'
wp option delete 'easypanel_offer_showcase_secondary_color'
wp option delete 'easypanel_offer_showcase_text_color'
wp option delete 'easypanel_offer_showcase_button_text'
wp option delete 'easypanel_offer_showcase_columns'
wp option delete 'easypanel_offer_showcase_currency'
wp option delete 'easypanel_offer_showcase_border_radius'
wp option delete 'easypanel_offer_showcase_card_padding'
wp option delete 'easypanel_offer_showcase_button_radius'
wp option delete 'easypanel_offer_showcase_grid_gap'
wp option delete 'easypanel_offer_showcase_badge_color'
wp option delete 'easypanel_offer_showcase_bestseller_border_color'
wp option delete 'easypanel_offer_showcase_bestseller_border_width'
wp option delete 'easypanel_offer_showcase_header_alignment'
wp option delete 'easypanel_offer_showcase_body_alignment'
wp option delete 'easypanel_offer_showcase_quiz_completed'
wp option delete 'easypanel_offer_showcase_quiz_last_shown'
wp option delete 'easypanel_offer_showcase_quiz_result'

# Delete Transients
wp transient delete 'easypanel_offer_showcase_lang_changed_notice'
wp transient delete 'easypanel_offer_showcase_settings_saved_notice'
wp transient delete 'easypanel_offer_showcase_quiz_error'
wp transient delete 'easypanel_offer_showcase_quiz_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypanel_offer_showcase_supertitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypanel_offer_showcase_supertitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypanel_offer_showcase_supertitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypanel_offer_showcase_supertitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypanel_offer_showcase_show_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypanel_offer_showcase_show_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypanel_offer_showcase_show_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypanel_offer_showcase_show_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypanel_offer_showcase_badge_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypanel_offer_showcase_badge_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypanel_offer_showcase_badge_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypanel_offer_showcase_badge_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypanel_offer_showcase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypanel_offer_showcase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypanel_offer_showcase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypanel_offer_showcase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypanel_offer_showcase_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypanel_offer_showcase_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypanel_offer_showcase_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypanel_offer_showcase_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypanel_offer_showcase_button_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypanel_offer_showcase_button_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypanel_offer_showcase_button_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypanel_offer_showcase_button_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypanel_offer_showcase_price_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypanel_offer_showcase_price_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypanel_offer_showcase_price_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypanel_offer_showcase_price_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
