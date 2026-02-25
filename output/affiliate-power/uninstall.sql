-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affiliate-power-options', 'affiliate-power-meta-options', 'affiliate-power-version', 'affiliate-power-premium');

