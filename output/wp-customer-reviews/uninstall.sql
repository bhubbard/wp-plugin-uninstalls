-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcr_options');
DELETE FROM wp_options WHERE option_name LIKE '%_gotosettings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcr_migrated_to_3x', 'wpcr3_enable', 'wpcr3_format', 'wpcr3_business_name', 'wpcr3_business_street1', 'wpcr3_business_city', 'wpcr3_business_state', 'wpcr3_business_zip', 'wpcr3_business_country', 'wpcr3_business_phone', 'wpcr3_business_url', 'wpcr3_product_name', 'wpcr3_product_brand', 'wpcr3_product_id', 'wpcr3_review_post', 'wpcr3_review_name', 'wpcr3_review_email', 'wpcr3_review_ip', 'wpcr3_review_website', 'wpcr3_review_title', 'wpcr3_review_rating', 'wpcr3_review_admin_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcr_migrated_to_3x', 'wpcr3_enable', 'wpcr3_format', 'wpcr3_business_name', 'wpcr3_business_street1', 'wpcr3_business_city', 'wpcr3_business_state', 'wpcr3_business_zip', 'wpcr3_business_country', 'wpcr3_business_phone', 'wpcr3_business_url', 'wpcr3_product_name', 'wpcr3_product_brand', 'wpcr3_product_id', 'wpcr3_review_post', 'wpcr3_review_name', 'wpcr3_review_email', 'wpcr3_review_ip', 'wpcr3_review_website', 'wpcr3_review_title', 'wpcr3_review_rating', 'wpcr3_review_admin_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcr_migrated_to_3x', 'wpcr3_enable', 'wpcr3_format', 'wpcr3_business_name', 'wpcr3_business_street1', 'wpcr3_business_city', 'wpcr3_business_state', 'wpcr3_business_zip', 'wpcr3_business_country', 'wpcr3_business_phone', 'wpcr3_business_url', 'wpcr3_product_name', 'wpcr3_product_brand', 'wpcr3_product_id', 'wpcr3_review_post', 'wpcr3_review_name', 'wpcr3_review_email', 'wpcr3_review_ip', 'wpcr3_review_website', 'wpcr3_review_title', 'wpcr3_review_rating', 'wpcr3_review_admin_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcr_migrated_to_3x', 'wpcr3_enable', 'wpcr3_format', 'wpcr3_business_name', 'wpcr3_business_street1', 'wpcr3_business_city', 'wpcr3_business_state', 'wpcr3_business_zip', 'wpcr3_business_country', 'wpcr3_business_phone', 'wpcr3_business_url', 'wpcr3_product_name', 'wpcr3_product_brand', 'wpcr3_product_id', 'wpcr3_review_post', 'wpcr3_review_name', 'wpcr3_review_email', 'wpcr3_review_ip', 'wpcr3_review_website', 'wpcr3_review_title', 'wpcr3_review_rating', 'wpcr3_review_admin_response');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_review_post';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_review_post';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_review_post';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_review_post';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_review_rating';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_review_rating';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_review_rating';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_review_rating';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_hideform';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_hideform';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_hideform';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_hideform';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_review_ip';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_review_ip';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_review_ip';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_review_ip';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_review_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_review_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_review_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_review_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_review_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_review_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_review_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_review_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_review_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_review_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_review_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_review_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_review_website';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_review_website';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_review_website';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_review_website';

