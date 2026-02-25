-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imcm-display-position', 'display_position', 'imcm-checkout-fields', 'imcm-style-options', 'imcm-setting-troubleshoot', 'imcm-setting-general');

