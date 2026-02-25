#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_points_rewards_redeem_points_ratio'
wp option delete 'wc_points_rewards_points_tax_application'
wp option delete 'wc_points_rewards_cart_min_discount'
wp option delete 'wc_points_rewards_cart_max_discount'
wp option delete 'wc_points_rewards_max_discount'
wp option delete 'wc_points_rewards_partial_redemption_enabled'
wp option delete 'wc_points_rewards_earn_points_rounding'
wp option delete 'op_points_rewards_activation_date'
wp option delete 'op_points_rewards_extenstion_origin_url'
wp option delete 'op_points_rewards_extenstion_server_url'
wp option delete 'op_points_rewards_code'
wp option delete 'op_points_rewards_extenstion_name'
wp option delete 'op_points_rewards_extenstion_url'
wp option delete 'op_points_rewards_extenstion_id'
wp option delete 'oliver_pos_subscription_client_id'
wp option delete 'oliver_pos_subscription_token'
wp option delete 'oliver_points_and_rewards_status'

