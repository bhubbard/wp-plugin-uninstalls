-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emojfopo_enabled_emojis', 'emojfopo_position', 'emojfopo_post_types', 'emojfopo_custom_names', 'emojfopo_title_text');

