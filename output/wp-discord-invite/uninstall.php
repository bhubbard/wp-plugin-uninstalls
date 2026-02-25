<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smr_discord_uri');
delete_site_option('smr_discord_uri');
delete_option('smr_discord_click_count');
delete_site_option('smr_discord_click_count');
delete_option('smr_discord_link_last_click');
delete_site_option('smr_discord_link_last_click');
delete_option('smr_discord_click_count_last_reset');
delete_site_option('smr_discord_click_count_last_reset');
delete_option('smr_discord_webhook_enable');
delete_site_option('smr_discord_webhook_enable');
delete_option('smr_discord_webhook_url');
delete_site_option('smr_discord_webhook_url');
delete_option('smr_discord_invite_link');
delete_site_option('smr_discord_invite_link');
delete_option('smr_discord_embed_color');
delete_site_option('smr_discord_embed_color');
delete_option('smr_discord_title');
delete_site_option('smr_discord_title');
delete_option('smr_discord_author');
delete_site_option('smr_discord_author');
delete_option('smr_discord_description');
delete_site_option('smr_discord_description');
delete_option('smr_discord_image_url');
delete_site_option('smr_discord_image_url');

