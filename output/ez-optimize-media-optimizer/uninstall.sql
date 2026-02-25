-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ezoptimize_key', 'ezoptimize', 'ezoptimize_auto');

