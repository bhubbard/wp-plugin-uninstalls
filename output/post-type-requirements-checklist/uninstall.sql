-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aptrc-display-activation-message', 'aptrc-display-uninstallation-message');

