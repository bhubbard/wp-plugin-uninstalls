-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('discord_webhook_enabled_for_cf7', 'discord_webhook_enabled_for_jetpack_cf', 'discord_webhook_enabled_for_gf', 'discord_webhook_bot_username', 'discord_webhook_avatar_url', 'discord_webhook_bot_token', 'discord_webhook_webhook_url', 'discord_webhook_logging', 'discord_webhook_mention_everyone', 'discord_webhook_disable_embed', 'discord_webhook_message_format', 'discord_webhook_post_webhook_url', 'discord_webhook_enabled_for_woocommerce', 'discord_webhook_giphy_api_key', 'discord_webhook_enabled_for_woocommerce_products', 'discord_webhook_product_message_format', 'discord_webhook_order_message_format');
DELETE FROM wp_options WHERE option_name LIKE '%_webhook_url';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_discord_webhook_published');
DELETE FROM wp_usermeta WHERE meta_key IN ('_discord_webhook_published');
DELETE FROM wp_termmeta WHERE meta_key IN ('_discord_webhook_published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_discord_webhook_published');

