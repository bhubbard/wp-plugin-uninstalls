-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccc-sandbox', 'wccc-cert-activation', 'wccc-password', 'wccc-categories', 'wccc-image');

