#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'discord_webhook_enabled_for_cf7'
wp option delete 'discord_webhook_enabled_for_jetpack_cf'
wp option delete 'discord_webhook_enabled_for_gf'
wp option delete 'discord_webhook_bot_username'
wp option delete 'discord_webhook_avatar_url'
wp option delete 'discord_webhook_bot_token'
wp option delete 'discord_webhook_webhook_url'
wp option delete 'discord_webhook_logging'
wp option delete 'discord_webhook_mention_everyone'
wp option delete 'discord_webhook_disable_embed'
wp option delete 'discord_webhook_message_format'
wp option delete 'discord_webhook_post_webhook_url'
wp option delete 'discord_webhook_enabled_for_woocommerce'
wp option delete 'discord_webhook_giphy_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_webhook_url'"
wp option delete 'discord_webhook_enabled_for_woocommerce_products'
wp option delete 'discord_webhook_product_message_format'
wp option delete 'discord_webhook_order_message_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discord_webhook_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discord_webhook_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discord_webhook_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discord_webhook_published'"
