-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smr_discord_uri', 'smr_discord_click_count', 'smr_discord_link_last_click', 'smr_discord_click_count_last_reset', 'smr_discord_webhook_enable', 'smr_discord_webhook_url', 'smr_discord_invite_link', 'smr_discord_embed_color', 'smr_discord_title', 'smr_discord_author', 'smr_discord_description', 'smr_discord_image_url');

