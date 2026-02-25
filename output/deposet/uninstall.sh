#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deposet_enable'
wp option delete 'deposet_category_rules'
wp option delete 'deposet_disable_roles'
wp option delete 'deposet_checkout_enabled'
wp option delete 'deposet_type'
wp option delete 'deposet_amount'
wp option delete 'deposet_default_selection'
wp option delete 'deposet_stock_reduce'
wp option delete 'deposet_disabled_gateways'
wp option delete 'deposet_force_deposit'
wp option delete 'deposet_require_login'
wp option delete 'deposet_keep_data_on_uninstall'

# Clear Cron Jobs
wp cron event delete 'deposet_send_payment_reminder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposet_inherit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposet_inherit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposet_inherit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposet_inherit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposet_force'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposet_force'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposet_force'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposet_force'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposet_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposet_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposet_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposet_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposet_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposet_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposet_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposet_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposet_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposet_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposet_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposet_amount'"
