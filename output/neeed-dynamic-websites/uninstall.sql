-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynweb-options', 'dynweb-meta-options', 'dynweb-version', 'dynweb-pro');

