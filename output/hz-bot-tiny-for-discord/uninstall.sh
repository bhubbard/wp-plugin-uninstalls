#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hz_discord_bot_setting_public_key'
wp option delete 'hz_discord_bot_setting_bot_token'
wp option delete 'hz_discord_bot_setting_guild_id'
wp option delete 'hz_discord_bot_setting_application_id'
wp option delete 'hz_discord_webhook_form_blocks'
wp option delete 'hz_discord_bot_notice_form_blocks'
wp option delete 'hz_discord_bot_notify_status'
wp option delete 'hz_discord_bot_form_blocks_status'
wp option delete 'hz_discord_bot_form_status_ctrl'
wp option delete 'hz_discord_bot_form_blocks_message'
wp option delete 'hz_discord_bot_form_find_message'
wp option delete 'hz_discord_bot_form_product_enable'
wp option delete 'hz_discord_bot_form_phone_blocks'
wp option delete 'hz_discord_bot_form_phoneLimit_blocks'
wp option delete 'hz_discord_bot_form_status_phone'
wp option delete 'hz_discord_bot_form_payment_phone'
wp option delete 'hz_discord_bot_setting_debug'
wp option delete 'hz_discord_bot_setting_clear'
wp option delete 'hz_discord_bot_form_blocks'
wp option delete 'hz_discord_bot_setting_form_blocks'

# Delete Transients
wp transient delete 'hz_discord_bot_settings_error'

