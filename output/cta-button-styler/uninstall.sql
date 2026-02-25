-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cta_button_name', 'cta_button_effects', 'cta_button_options', 'cta_button_hover_options');

