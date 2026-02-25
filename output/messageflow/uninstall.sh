#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'messageflow-settings-account-sid'
wp option delete 'messageflow-settings-auth-token'
wp option delete 'messageflow-settings-from-phone'
wp option delete 'messageflow-user-id'
wp option delete 'messageflow-settings-visibility-permission'
wp option delete 'messageflow-settings-enable-test-mode'
wp option delete 'messageflow-settings-include-statuses'
wp option delete 'messageflow-settings-test-account-sid'
wp option delete 'messageflow-settings-test-auth-token'
wp option delete 'messageflow-settings-test-from-phone'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'messageflow-settings-%'"
wp option delete 'messageflow-settings-default-message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account-sid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auth-token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%from-phone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable-test-mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%test-account-sid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%test-auth-token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%test-from-phone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkout-sms-subscription-default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%include-statuses'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default-message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%visibility-permission'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notify-service-sid'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'messageflow_order_noti_is_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'messageflow_order_noti_is_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'messageflow_order_noti_is_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'messageflow_order_noti_is_subscribed'"
