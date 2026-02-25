-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aau_ahcm_last_object_id', 'woocommerce_permalinks');
DELETE FROM wp_options WHERE option_name LIKE 'aau_ahcm_description_hack_%';

