#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'branam_encryption_key'
wp option delete 'branam_blogger_role'
wp option delete 'branam_expert_role'
wp option delete 'branam_blogger_reward'
wp option delete 'branam_expert_reward'
wp option delete 'branam_delete_meta'
wp option delete 'branam_email_subject'
wp option delete 'branam_email_template'
wp option delete 'branam_email_font'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'branam_coupon_payout_calculation_result'
wp transient delete 'branam_coupon_payout_selected_orders'
wp transient delete 'branam_show_action_buttons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'branam_only_first_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'branam_only_first_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'branam_only_first_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'branam_only_first_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_branam_user_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_branam_user_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_branam_user_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_branam_user_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'branam_user_numbercartbank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'branam_user_numbercartbank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'branam_user_numbercartbank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'branam_user_numbercartbank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'branam_user_bankname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'branam_user_bankname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'branam_user_bankname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'branam_user_bankname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_branam_ambassador_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_branam_ambassador_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_branam_ambassador_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_branam_ambassador_user'"
