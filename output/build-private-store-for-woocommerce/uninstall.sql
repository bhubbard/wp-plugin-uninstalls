-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpsfw_form_bg_image', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'wg_combo_%';
DELETE FROM wp_options WHERE option_name LIKE 'wg_cats_select2_%';
DELETE FROM wp_options WHERE option_name LIKE 'bpsfw_tags_select2_%';
DELETE FROM wp_options WHERE option_name LIKE 'wg_pags_select2_%';
DELETE FROM wp_options WHERE option_name LIKE 'bpsfw_redirect_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'bpsfw_prod_redirect_url_%';
DELETE FROM wp_options WHERE option_name LIKE '%sslpfwerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('approval_confirmation');
DELETE FROM wp_usermeta WHERE meta_key IN ('approval_confirmation');
DELETE FROM wp_termmeta WHERE meta_key IN ('approval_confirmation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('approval_confirmation');

