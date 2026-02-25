#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pisol_aww_cashback_expiry_days'
wp option delete 'pisol_aww_cashback_rule'
wp option delete '_add_wallet_recharge_product'
wp option delete 'wallet_product_title'
wp option delete 'wallet_product_taxable'
wp option delete 'wallet_product_tax_class'
wp option delete 'pisol_aww_refund_expiry_days'
wp option delete 'pi_aww_do_activation_redirect'
wp option delete 'pisol_aww_enable_cashback'
wp option delete 'pisol_aww_process_cashback_status'
wp option delete 'pisol_aww_enable_cashback_on_recharge'
wp option delete 'pisol_aww_max_cashback_amount'
wp option delete 'pisol_aww_exclude_user_roles'
wp option delete 'pisol_aww_cashback_type'
wp option delete 'pisol_aww_cashback_amount'
wp option delete 'pisol_aww_enable_registration_reward'
wp option delete 'pisol_aww_registration_reward_amount'
wp option delete 'pisol_aww_registration_reward_expires_in_days'
wp option delete 'pisol_aww_enable_review_reward'
wp option delete 'pisol_aww_review_reward_amount'
wp option delete 'pisol_aww_review_reward_expires_in_days'
wp option delete 'pisol_aww_single_reward_per_product'
wp option delete 'pisol_aww_wallet_coupon_order_states'
wp option delete 'pisol_aww_min_recharge_amount'
wp option delete 'pisol_aww_max_recharge_amount'
wp option delete 'pisol_aww_enable_gateway_charge'
wp option delete 'pisol_aww_payment_gateway_charges'
wp option delete 'pisol_aww_gateway_charge_type'
wp option delete 'pisol_aww_purhase_expiry_in_days'
wp option delete 'pisol_aww_potential_cashback_label'
wp option delete 'pisol_aww_potential_cashback_tooltip'
wp option delete 'pisol_aww_cashback_label'
wp option delete 'woocommerce_pisol_wallet_settings'
wp option delete 'pisol_aww_enable_recharge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_has_custom_cashback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_has_custom_cashback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_has_custom_cashback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_has_custom_cashback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_cashback_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_cashback_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_cashback_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_cashback_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_cashback_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_cashback_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_cashback_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_cashback_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_max_cashback_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_max_cashback_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_max_cashback_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_max_cashback_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pi_aww_is_wallet_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pi_aww_is_wallet_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pi_aww_is_wallet_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pi_aww_is_wallet_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_registration_reward_given'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_registration_reward_given'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_registration_reward_given'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_registration_reward_given'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_registration_reward_credit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_registration_reward_credit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_registration_reward_credit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_registration_reward_credit_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_review_reward_given'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_review_reward_given'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_review_reward_given'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_review_reward_given'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pisol_aww_review_reward_credit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pisol_aww_review_reward_credit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pisol_aww_review_reward_credit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pisol_aww_review_reward_credit_id'"
