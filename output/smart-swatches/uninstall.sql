-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'smart_swatches_version', 'smart_swatches_first_version', 'smart_swatches_activation_date', 'smart_swatches_ssp_settings', 'smart_swatches_db_version', 'sp_swatches_review_notice_dismiss', 'woocommerce_cart_redirect_after_add', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'swatches_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'smart_swatches_%';
DELETE FROM wp_options WHERE option_name LIKE 'smart_swatches_smart_swatches_attr_%';
DELETE FROM wp_options WHERE option_name LIKE 'smart_swatches_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ssp_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('ssp_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('ssp_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ssp_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ssp_attribute_options_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ssp_attribute_options_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ssp_attribute_options_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ssp_attribute_options_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%';

