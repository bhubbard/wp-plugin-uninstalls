-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hidden_stuff_active', 'hidden_stuff_text', 'hidden_stuff_button_type');

