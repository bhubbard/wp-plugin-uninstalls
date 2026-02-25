-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selector', 'alignment', 'fullWidth', 'placeholder_text', 'custom_css');

