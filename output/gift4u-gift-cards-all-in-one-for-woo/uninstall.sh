#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giftcard_messages'
wp option delete 'gift4u_setup_wizard'
wp option delete 'gift4u_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'villatheme_item_21055'
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Clear Cron Jobs
wp cron event delete 'gift4u_schedule_send_giftcard'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift4u_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift4u_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift4u_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift4u_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift4u_card_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift4u_card_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift4u_card_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift4u_card_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift4u_discount_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift4u_discount_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift4u_discount_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift4u_discount_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift4u_message_character_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift4u_message_character_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift4u_message_character_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift4u_message_character_limit'"
