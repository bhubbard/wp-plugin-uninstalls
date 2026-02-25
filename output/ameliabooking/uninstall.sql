-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amelia_settings', 'amelia_stash', 'amelia_show_wpdt_promo', 'classic-editor-replace', 'amelia_activation_redirect', 'amelia_square_access_token');

