-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parcelbrokerwc-dismiss_notice', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'parcelbrokerwc-powered_by', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE 'parcelbrokerwc-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_anonymized', '_parcelbrokerwc-order_response', '_parcelbrokerwc-errors_count', '_parcelbrokerwc-use_customs', '_package_length', '_package_width', '_package_height', '_parcelbrokerwc-order_errors', '_parcelbrokerwc-parcel_list', '_parcelbrokerwc-xml', '_parcelbrokerwc-error-mail', '_parcelbrokerwc-error-date', 'bookSuccess');
DELETE FROM wp_usermeta WHERE meta_key IN ('_anonymized', '_parcelbrokerwc-order_response', '_parcelbrokerwc-errors_count', '_parcelbrokerwc-use_customs', '_package_length', '_package_width', '_package_height', '_parcelbrokerwc-order_errors', '_parcelbrokerwc-parcel_list', '_parcelbrokerwc-xml', '_parcelbrokerwc-error-mail', '_parcelbrokerwc-error-date', 'bookSuccess');
DELETE FROM wp_termmeta WHERE meta_key IN ('_anonymized', '_parcelbrokerwc-order_response', '_parcelbrokerwc-errors_count', '_parcelbrokerwc-use_customs', '_package_length', '_package_width', '_package_height', '_parcelbrokerwc-order_errors', '_parcelbrokerwc-parcel_list', '_parcelbrokerwc-xml', '_parcelbrokerwc-error-mail', '_parcelbrokerwc-error-date', 'bookSuccess');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_anonymized', '_parcelbrokerwc-order_response', '_parcelbrokerwc-errors_count', '_parcelbrokerwc-use_customs', '_package_length', '_package_width', '_package_height', '_parcelbrokerwc-order_errors', '_parcelbrokerwc-parcel_list', '_parcelbrokerwc-xml', '_parcelbrokerwc-error-mail', '_parcelbrokerwc-error-date', 'bookSuccess');

