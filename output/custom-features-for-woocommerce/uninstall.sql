-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cffw_store_close_status', 'cffw_store_close_message', 'cffw_store_close_still_date', 'cffw_cart_auto_update');

