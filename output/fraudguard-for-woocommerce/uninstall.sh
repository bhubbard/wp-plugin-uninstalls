#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fraudguard_plugin_activation_redirect'
wp option delete 'fraudguard_notifications_enabled'
wp option delete 'fraudguard_admin_emails'
wp option delete 'fraudguard_first_order_rules_enabled'
wp option delete 'fraudguard_first_order_weight'
wp option delete 'fraudguard_risk_score_threshold'
wp option delete 'fraudguard_geo_rules_enabled'
wp option delete 'fraudguard_check_address_match'
wp option delete 'fraudguard_address_match_weight'
wp option delete 'fraudguard_check_phone_country'
wp option delete 'fraudguard_phone_match_weight'
wp option delete 'fraudguard_max_order_amount'
wp option delete 'woocommerce_currency'
wp option delete 'fraudguard_high_risk_countries'
wp option delete 'fraudguard_order_condition_logic'
wp option delete 'fraudguard_order_status_condition'
wp option delete 'fraudguard_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudguard_is_flagged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudguard_is_flagged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudguard_is_flagged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudguard_is_flagged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudguard_risk_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudguard_risk_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudguard_risk_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudguard_risk_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudguard_triggered_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudguard_triggered_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudguard_triggered_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudguard_triggered_rules'"
