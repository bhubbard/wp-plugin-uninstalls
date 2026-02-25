-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('opalestate_package_maximum_purchased', 'opalestate_package_enable_expired', 'opalestate_package_duration', 'opalestate_package_hightlighted', 'opalestate_package_unlimited_listings', 'opalestate_package_package_listings', 'opalestate_package_package_featured_listings', 'opalestate_package_duration_unit', 'opalestate_package_recurring');
DELETE FROM wp_usermeta WHERE meta_key IN ('opalestate_package_maximum_purchased', 'opalestate_package_enable_expired', 'opalestate_package_duration', 'opalestate_package_hightlighted', 'opalestate_package_unlimited_listings', 'opalestate_package_package_listings', 'opalestate_package_package_featured_listings', 'opalestate_package_duration_unit', 'opalestate_package_recurring');
DELETE FROM wp_termmeta WHERE meta_key IN ('opalestate_package_maximum_purchased', 'opalestate_package_enable_expired', 'opalestate_package_duration', 'opalestate_package_hightlighted', 'opalestate_package_unlimited_listings', 'opalestate_package_package_listings', 'opalestate_package_package_featured_listings', 'opalestate_package_duration_unit', 'opalestate_package_recurring');
DELETE FROM wp_commentmeta WHERE meta_key IN ('opalestate_package_maximum_purchased', 'opalestate_package_enable_expired', 'opalestate_package_duration', 'opalestate_package_hightlighted', 'opalestate_package_unlimited_listings', 'opalestate_package_package_listings', 'opalestate_package_package_featured_listings', 'opalestate_package_duration_unit', 'opalestate_package_recurring');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%package_expired';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%package_expired';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%package_expired';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%package_expired';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%package_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%package_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%package_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%package_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%payment_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%payment_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%payment_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%payment_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%package_activation';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%package_activation';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%package_activation';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%package_activation';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%send_expired_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%send_expired_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%send_expired_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%send_expired_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%package_listings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%package_listings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%package_listings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%package_listings';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%package_featured_listings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%package_featured_listings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%package_featured_listings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%package_featured_listings';

