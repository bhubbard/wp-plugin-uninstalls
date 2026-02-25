-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fakeloader-delay-time', 'fakeloader-z-index', 'fakeloader-spinner', 'fakeloader-bg-color', 'fakeloader-is-image', 'fakeloader-spinner-file');

