-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SWEET_TRACKER_ID', 'SWEET_INIT_ERROR', 'SWEET_INIT_SUCCESS', 'SWEET_TRACKER', 'SWEET_BASKET_TRACKER', 'fx-admin-notice-sweet');

