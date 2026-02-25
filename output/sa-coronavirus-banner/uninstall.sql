-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('banner_options', 'notice-transient', 'fx-admin-notice-example');

