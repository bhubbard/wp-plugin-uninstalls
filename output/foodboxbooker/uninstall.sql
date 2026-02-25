-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbbttm_fbbttm-shop_page_id', 'fbbttm_fbbttm-cart_page_id', 'fbbttm_fbbttm-checkout_page_id', 'fbbttm_fbbttm-myaccount_page_id', 'fbbttm_fbbttm-order-received_page_id', 'fbbttm_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fbbttmprice', 'themetechmount_fooditems_list_data', 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('fbbttmprice', 'themetechmount_fooditems_list_data', 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('fbbttmprice', 'themetechmount_fooditems_list_data', 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fbbttmprice', 'themetechmount_fooditems_list_data', 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data');

