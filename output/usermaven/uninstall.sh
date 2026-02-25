#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usermaven_server_token'
wp option delete 'usermaven_api_key'
wp option delete 'usermaven_cookie_less_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'usermaven_role_%'"
wp option delete 'usermaven_custom_domain'
wp option delete 'usermaven_autocapture'
wp option delete 'usermaven_form_tracking'
wp option delete 'usermaven_identify_verification'
wp option delete 'usermaven_embed_dashboard'
wp option delete 'usermaven_shared_link'
wp option delete 'usermaven_track_woocommerce'
wp option delete 'usermaven_role_administrator'
wp option delete 'usermaven_role_author'
wp option delete 'usermaven_role_contributor'
wp option delete 'usermaven_role_editor'
wp option delete 'usermaven_role_subscriber'
wp option delete 'usermaven_role_translator'

# Clear Cron Jobs
wp cron event delete 'usermaven_check_cart_abandonment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_usermaven_order_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_usermaven_order_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_usermaven_order_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_usermaven_order_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_marketing_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_marketing_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_marketing_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_marketing_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_marketing_medium'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_marketing_medium'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_marketing_medium'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_marketing_medium'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_marketing_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_marketing_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_marketing_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_marketing_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_failure_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_failure_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_failure_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_failure_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_retry_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_retry_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_retry_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_retry_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hold_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hold_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hold_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hold_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cancellation_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cancellation_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cancellation_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cancellation_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cancelled_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cancelled_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cancelled_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cancelled_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
