-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbai_hash', 'cbai_otl', 'cbai_account', 'cbai_website', 'cbai_version', 'cbai_model');

