#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfwp_stripe_secret_key'
wp option delete 'cfwp_stripe_webhook_secret'
wp option delete 'cfwp_plan_name'
wp option delete 'cfwp_redirect_not_logged_in'
wp option delete 'cfwp_redirect_not_subscribed'
wp option delete 'cfwp_redirect_expired'
wp option delete 'cfwp_plan_price'
wp option delete 'cfwp_success_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfwp_dismiss_missing_woocommerce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfwp_dismiss_missing_woocommerce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfwp_dismiss_missing_woocommerce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfwp_dismiss_missing_woocommerce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfwp_dismiss_missing_smtp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfwp_dismiss_missing_smtp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfwp_dismiss_missing_smtp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfwp_dismiss_missing_smtp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfwp_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfwp_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfwp_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfwp_restricted'"
