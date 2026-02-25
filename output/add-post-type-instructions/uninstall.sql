-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apti-display-activation-message', 'apti-display-uninstallation-message');

