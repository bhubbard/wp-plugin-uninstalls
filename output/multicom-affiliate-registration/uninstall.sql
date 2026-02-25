-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ref_info_css', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password');
DELETE FROM wp_options WHERE option_name LIKE '%membershipsdash';
DELETE FROM wp_options WHERE option_name LIKE '%_type';
DELETE FROM wp_options WHERE option_name LIKE '%_label';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_slug';
DELETE FROM wp_options WHERE option_name LIKE '%enable_regpage';
DELETE FROM wp_options WHERE option_name LIKE '%page_title';
DELETE FROM wp_options WHERE option_name LIKE '%register_targetmenu';
DELETE FROM wp_options WHERE option_name LIKE '%default_enrollment';
DELETE FROM wp_options WHERE option_name LIKE '%after_registration_message';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%ref_info_text';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'first_name', 'billing_last_name', 'last_name', 'refname', 'profile_photo', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'first_name', 'billing_last_name', 'last_name', 'refname', 'profile_photo', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'first_name', 'billing_last_name', 'last_name', 'refname', 'profile_photo', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'first_name', 'billing_last_name', 'last_name', 'refname', 'profile_photo', 'billing_phone');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%referred_by';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%referred_by';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%referred_by';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%referred_by';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%referred_by_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%referred_by_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%referred_by_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%referred_by_id';

