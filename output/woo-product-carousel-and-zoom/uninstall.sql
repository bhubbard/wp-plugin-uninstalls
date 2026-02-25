-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocz_carousel_options', 'woocz_zoom_options', 'woocz-display-activation-message');

