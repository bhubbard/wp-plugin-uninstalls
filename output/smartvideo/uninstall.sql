-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swarmify_status', 'swarmify_cdn_key', 'swarmify_toggle_youtube', 'swarmify_toggle_youtube_cc', 'swarmify_toggle_layout', 'swarmify_toggle_bgvideo', 'swarmify_theme_button', 'swarmify_toggle_uploadacceleration', 'swarmify_theme_primarycolor', 'swarmify_watermark', 'swarmify_ads_vasturl');

