-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BYOBFW_build_your_own_basket_activation_error', 'BYOBFW_build_your_own_basket_product_id', 'byobfw_db_version');

