-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lk-excerpt-length-value', 'lk-excerpt-suffix-value');

