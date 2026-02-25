-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FLYING_PAGES_VERSION', 'flying_pages_config_delay', 'flying_pages_config_ignore_keywords', 'flying_pages_config_max_rps', 'flying_pages_config_hover_delay', 'flying_pages_config_disable_on_login');

