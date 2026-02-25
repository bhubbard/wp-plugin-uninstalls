-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__walker_core_do_redirect', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('walker_post_viewed', 'walker_client_position', 'walker_client_company', 'walker_team_company', 'walker_team_position', 'walker_team_facebook', 'walker_team_twitter', 'walker_team_linkedin', 'walker_team_instagram', 'walker_team_github', 'walker_slider_primary_button', 'walker_slider_primary_button_link', 'walker_slider_secondary_button', 'walker_slider_secondary_button_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('walker_post_viewed', 'walker_client_position', 'walker_client_company', 'walker_team_company', 'walker_team_position', 'walker_team_facebook', 'walker_team_twitter', 'walker_team_linkedin', 'walker_team_instagram', 'walker_team_github', 'walker_slider_primary_button', 'walker_slider_primary_button_link', 'walker_slider_secondary_button', 'walker_slider_secondary_button_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('walker_post_viewed', 'walker_client_position', 'walker_client_company', 'walker_team_company', 'walker_team_position', 'walker_team_facebook', 'walker_team_twitter', 'walker_team_linkedin', 'walker_team_instagram', 'walker_team_github', 'walker_slider_primary_button', 'walker_slider_primary_button_link', 'walker_slider_secondary_button', 'walker_slider_secondary_button_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('walker_post_viewed', 'walker_client_position', 'walker_client_company', 'walker_team_company', 'walker_team_position', 'walker_team_facebook', 'walker_team_twitter', 'walker_team_linkedin', 'walker_team_instagram', 'walker_team_github', 'walker_slider_primary_button', 'walker_slider_primary_button_link', 'walker_slider_secondary_button', 'walker_slider_secondary_button_link');

