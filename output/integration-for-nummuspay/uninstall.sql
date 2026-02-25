-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_CHECKOUT_PAGE_ID_FROM_NUMMUSPAY');

