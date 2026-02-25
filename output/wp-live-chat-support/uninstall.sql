-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplc_activated', 'wplc_callback_nonce', 'wplc_display_options');

