#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smr_discord_uri'
wp option delete 'smr_discord_click_count'
wp option delete 'smr_discord_link_last_click'
wp option delete 'smr_discord_click_count_last_reset'
wp option delete 'smr_discord_webhook_enable'
wp option delete 'smr_discord_webhook_url'
wp option delete 'smr_discord_invite_link'
wp option delete 'smr_discord_embed_color'
wp option delete 'smr_discord_title'
wp option delete 'smr_discord_author'
wp option delete 'smr_discord_description'
wp option delete 'smr_discord_image_url'

