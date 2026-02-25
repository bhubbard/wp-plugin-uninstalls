-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('channelize', 'channelize_migration', 'channelize_userrole');

