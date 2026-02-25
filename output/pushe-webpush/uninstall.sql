-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushe_webpush_settings', 'pushe_webpush_modal_options', 'pushe_webpush_bell_options');

