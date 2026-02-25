-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('transient_clean_options', 'transient_clean_expired', 'transient_clean_all');

