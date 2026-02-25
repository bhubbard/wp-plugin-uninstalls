-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mamurjor_institute_name', 'mamurjor_institute_info', 'shippingcharge', 'discount_mamurjor');

