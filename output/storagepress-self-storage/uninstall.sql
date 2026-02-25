-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storagepress_name', 'storagepress_address', 'storagepress_phone', 'storagepress_email', 'storagepress_rental_terms', 'storagepress_checks_payable_to', 'storagepress_listing_page', 'storagepress_display_credit_link', 'storagepress_feature_options', 'storagepress_default_thumbnail_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stpr_length', 'stpr_unit', 'stpr_width', 'stpr_price', 'stpr_tenant', 'stpr_features', 'stpr_reservation_inquirer', 'stpr_last_rental_date', 'stpr_last_vacant_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('stpr_length', 'stpr_unit', 'stpr_width', 'stpr_price', 'stpr_tenant', 'stpr_features', 'stpr_reservation_inquirer', 'stpr_last_rental_date', 'stpr_last_vacant_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('stpr_length', 'stpr_unit', 'stpr_width', 'stpr_price', 'stpr_tenant', 'stpr_features', 'stpr_reservation_inquirer', 'stpr_last_rental_date', 'stpr_last_vacant_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stpr_length', 'stpr_unit', 'stpr_width', 'stpr_price', 'stpr_tenant', 'stpr_features', 'stpr_reservation_inquirer', 'stpr_last_rental_date', 'stpr_last_vacant_date');

