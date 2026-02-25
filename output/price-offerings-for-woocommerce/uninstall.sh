#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_po_auto_complete'
wp option delete 'alg_wc_po_auto_uncomplete'
wp option delete 'alg_wc_po_exclude_cart_items_from_coupons'
wp option delete 'alg_wc_price_offerings_email'
wp option delete 'alg_wc_po_prevent_duplicate_offers'
wp option delete 'alg_wc_po_prevent_duplicate_offers_notice'
wp option delete 'alg_wc_price_offerings_customer_notice'
wp option delete 'alg_wc_price_offerings_form'
wp option delete 'alg_wc_po_payment_gateways'
wp option delete 'alg_wc_po_payment_gateways_action'
wp option delete 'alg_wc_po_rest_api_enabled'
wp option delete 'alg_wc_po_actions_email_from_name'
wp option delete 'alg_wc_po_actions_email_from_address'
wp option delete 'alg_wc_po_prevent_duplicate_offers_post_status'
wp option delete 'alg_wc_po_prevent_duplicate_offers_keys'
wp option delete 'alg_wc_price_offerings_button'
wp option delete 'alg_wc_price_offerings_styling'
wp option delete 'alg_wc_price_offerings_exclude'
wp option delete 'alg_wc_po_offer_price_button_user_visibility'
wp option delete 'alg_wc_po_dokan_vendor_allowed_fields'
wp option delete 'alg_wc_po_actions'
wp option delete 'alg_wc_price_offerings_admin'
wp option delete 'alg_wc_price_offerings_admin_currency_code'
wp option delete 'alg_wc_price_offerings_version'
wp option delete 'alg_wc_po_permalinks_flushed'
wp option delete 'alg_wc_po_send_emails_in_background'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'version_update_from_before_v200'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_price_offerings_price_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_price_offerings_price_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_price_offerings_price_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_price_offerings_price_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_price_offerings_min_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_price_offerings_min_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_price_offerings_min_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_price_offerings_min_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_price_offerings_max_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_price_offerings_max_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_price_offerings_max_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_price_offerings_max_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_price_offerings_default_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_price_offerings_default_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_price_offerings_default_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_price_offerings_default_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_price_offerings_default_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_price_offerings_default_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_price_offerings_default_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_price_offerings_default_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_price_offerings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_price_offerings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_price_offerings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_price_offerings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sent_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sent_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sent_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sent_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accepted_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accepted_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accepted_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accepted_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copy_to_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copy_to_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copy_to_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copy_to_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'token'"
