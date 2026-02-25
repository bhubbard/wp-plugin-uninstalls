-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_discord_post_plus_mention_everyone', 'wp_discord_post_plus_post_webhook_url', 'wp_discord_enabled_for_woocommerce_products', 'wp_discord_post_plus_product_webhook_url', 'wp_discord_product_message_format', 'wp_discord_enabled_for_woocommerce', 'wp_discord_order_plus_message_format', 'wp_discord_post_plus_bot_username', 'wp_discord_post_plus_avatar_url', 'wp_discord_post_plus_bot_token', 'wp_discord_post_plus_webhook_url', 'wp_discord_post_plus_logging', 'wp_discord_post_plus_disable_embed', 'wp_discord_post_plus_message_format', 'wp_discord_post_plus_settings_webhooks_input', 'wp_discord_enabled_for_cf7', 'wp_discord_post_plus_cf7_webhook_url', 'wp_discord_enabled_for_jetpack_cf', 'wp_discord_post_plus_jetpack_webhook_url', 'wp_discord_enabled_for_gf', 'wp_discord_post_plus_gf_webhook_url', 'wp_discord_post_plus_order_webhook_url', 'wp_discord_post_plus_giphy_api_key', 'wp_discord_order_plus_plus_message_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_discord_send_flag', 'wp_discord_mention_flag', '_wp_discord_post_plus_published', '_wp_discord_post_published');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_discord_send_flag', 'wp_discord_mention_flag', '_wp_discord_post_plus_published', '_wp_discord_post_published');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_discord_send_flag', 'wp_discord_mention_flag', '_wp_discord_post_plus_published', '_wp_discord_post_published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_discord_send_flag', 'wp_discord_mention_flag', '_wp_discord_post_plus_published', '_wp_discord_post_published');

