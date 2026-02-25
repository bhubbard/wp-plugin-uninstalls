-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crumbs-setting-one', 'crumbs-setting-two', 'crumbs-setting-three', 'crumbs-db-version');

