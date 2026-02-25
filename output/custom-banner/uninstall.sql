-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_banner_banner_text', 'custom_banner_autoplay', 'custom_banner_delay', 'custom_banner_enabled', 'custom_banner_text_color', 'custom_banner_background_color', 'custom_banner_width', 'custom_banner_arrows', 'custom_banner_enable', 'custom_banner_action_hook', 'custom_banner_css_class');

