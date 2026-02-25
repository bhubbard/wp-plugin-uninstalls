<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hz_discord_bot_setting_public_key');
delete_site_option('hz_discord_bot_setting_public_key');
delete_option('hz_discord_bot_setting_bot_token');
delete_site_option('hz_discord_bot_setting_bot_token');
delete_option('hz_discord_bot_setting_guild_id');
delete_site_option('hz_discord_bot_setting_guild_id');
delete_option('hz_discord_bot_setting_application_id');
delete_site_option('hz_discord_bot_setting_application_id');
delete_option('hz_discord_webhook_form_blocks');
delete_site_option('hz_discord_webhook_form_blocks');
delete_option('hz_discord_bot_notice_form_blocks');
delete_site_option('hz_discord_bot_notice_form_blocks');
delete_option('hz_discord_bot_notify_status');
delete_site_option('hz_discord_bot_notify_status');
delete_option('hz_discord_bot_form_blocks_status');
delete_site_option('hz_discord_bot_form_blocks_status');
delete_option('hz_discord_bot_form_status_ctrl');
delete_site_option('hz_discord_bot_form_status_ctrl');
delete_option('hz_discord_bot_form_blocks_message');
delete_site_option('hz_discord_bot_form_blocks_message');
delete_option('hz_discord_bot_form_find_message');
delete_site_option('hz_discord_bot_form_find_message');
delete_option('hz_discord_bot_form_product_enable');
delete_site_option('hz_discord_bot_form_product_enable');
delete_option('hz_discord_bot_form_phone_blocks');
delete_site_option('hz_discord_bot_form_phone_blocks');
delete_option('hz_discord_bot_form_phoneLimit_blocks');
delete_site_option('hz_discord_bot_form_phoneLimit_blocks');
delete_option('hz_discord_bot_form_status_phone');
delete_site_option('hz_discord_bot_form_status_phone');
delete_option('hz_discord_bot_form_payment_phone');
delete_site_option('hz_discord_bot_form_payment_phone');
delete_option('hz_discord_bot_setting_debug');
delete_site_option('hz_discord_bot_setting_debug');
delete_option('hz_discord_bot_setting_clear');
delete_site_option('hz_discord_bot_setting_clear');
delete_option('hz_discord_bot_form_blocks');
delete_site_option('hz_discord_bot_form_blocks');
delete_option('hz_discord_bot_setting_form_blocks');
delete_site_option('hz_discord_bot_setting_form_blocks');

// Delete Transients
delete_transient('hz_discord_bot_settings_error');
delete_site_transient('hz_discord_bot_settings_error');

