-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lt_options', 'lt_open_exchange_data', 'lt_set_option', 'lt_set_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lang_code';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lang_code';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lang_code';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lang_code';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lang';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lang';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lang';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lang';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%offer_lang';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%offer_lang';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%offer_lang';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%offer_lang';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lang_conv_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lang_conv_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lang_conv_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lang_conv_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%file_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%file_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%file_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%file_data';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%tran_from';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%tran_from';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%tran_from';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tran_from';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%tran_to';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%tran_to';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%tran_to';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tran_to';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%translate_level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%translate_level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%translate_level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%translate_level';

