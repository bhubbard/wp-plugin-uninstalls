-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ofc_version', 'ofc_migration_done', 'ofc_pro_notice', 'offer_calc_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_offer_calc_autoresponder', '_offercalc_aw_auth_code', '_offercalc_aw_list', '_offercalc_gr_api', '_offercalc_gr_list', '_offercalc_mc_api', '_offercalc_mc_list', '_offercalc_service_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_offer_calc_autoresponder', '_offercalc_aw_auth_code', '_offercalc_aw_list', '_offercalc_gr_api', '_offercalc_gr_list', '_offercalc_mc_api', '_offercalc_mc_list', '_offercalc_service_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_offer_calc_autoresponder', '_offercalc_aw_auth_code', '_offercalc_aw_list', '_offercalc_gr_api', '_offercalc_gr_list', '_offercalc_mc_api', '_offercalc_mc_list', '_offercalc_service_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_offer_calc_autoresponder', '_offercalc_aw_auth_code', '_offercalc_aw_list', '_offercalc_gr_api', '_offercalc_gr_list', '_offercalc_mc_api', '_offercalc_mc_list', '_offercalc_service_fields');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%service_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%service_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%service_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%service_fields';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%service_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%service_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%service_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%service_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%price_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%price_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%price_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%price_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%count_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%count_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%count_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%total_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%total_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%total_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%total_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%submission_offer_value';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%submission_offer_value';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%submission_offer_value';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%submission_offer_value';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%edit_image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%edit_image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%edit_image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%edit_image';

