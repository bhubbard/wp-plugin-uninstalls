#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_discord_post_plus_mention_everyone'
wp option delete 'wp_discord_post_plus_post_webhook_url'
wp option delete 'wp_discord_enabled_for_woocommerce_products'
wp option delete 'wp_discord_post_plus_product_webhook_url'
wp option delete 'wp_discord_product_message_format'
wp option delete 'wp_discord_enabled_for_woocommerce'
wp option delete 'wp_discord_order_plus_message_format'
wp option delete 'wp_discord_post_plus_bot_username'
wp option delete 'wp_discord_post_plus_avatar_url'
wp option delete 'wp_discord_post_plus_bot_token'
wp option delete 'wp_discord_post_plus_webhook_url'
wp option delete 'wp_discord_post_plus_logging'
wp option delete 'wp_discord_post_plus_disable_embed'
wp option delete 'wp_discord_post_plus_message_format'
wp option delete 'wp_discord_post_plus_settings_webhooks_input'
wp option delete 'wp_discord_enabled_for_cf7'
wp option delete 'wp_discord_post_plus_cf7_webhook_url'
wp option delete 'wp_discord_enabled_for_jetpack_cf'
wp option delete 'wp_discord_post_plus_jetpack_webhook_url'
wp option delete 'wp_discord_enabled_for_gf'
wp option delete 'wp_discord_post_plus_gf_webhook_url'
wp option delete 'wp_discord_post_plus_order_webhook_url'
wp option delete 'wp_discord_post_plus_giphy_api_key'
wp option delete 'wp_discord_order_plus_plus_message_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_discord_send_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_discord_send_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_discord_send_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_discord_send_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_discord_mention_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_discord_mention_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_discord_mention_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_discord_mention_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_discord_post_plus_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_discord_post_plus_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_discord_post_plus_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_discord_post_plus_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_discord_post_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_discord_post_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_discord_post_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_discord_post_published'"
