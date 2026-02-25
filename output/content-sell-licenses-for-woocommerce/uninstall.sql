-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csellwoo_enabled', 'csellwoo_licenses_data', 'active_sitewide_plugins', 'csellwoo_buttonclasses', 'csellwoo_formclasses', 'csellwoo_alertmsg', 'csellwoo_rcd', 'csellwoo_pnotice', 'csellwoo_pnoticetext', 'csellwoo_ptype', 'woocommerce_csellwoo_order_email_settings', 'csellwoo_ptitle', 'csellwoo_pdesc', 'csellwoo_showproducts', 'csellwoo_spf', 'csellwoo_loginlink', 'wc_price_based_country_version', '_oga_wppbc_countries_groups', 'woocommerce_version', 'woocommerce_myaccount_page_id', 'csellwoo_unistall');
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_protected', '_csellwoo_lic', 'ptext1');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_protected', '_csellwoo_lic', 'ptext1');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_protected', '_csellwoo_lic', 'ptext1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_protected', '_csellwoo_lic', 'ptext1');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csellwoo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csellwoo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csellwoo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csellwoo_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data';

