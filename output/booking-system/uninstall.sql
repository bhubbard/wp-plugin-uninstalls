-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DOPBSP_db_version_woocommerce', 'DOPBSP_view_pro', 'DOPBSP_db_version', 'DOPBSP_db_version_api_keys', 'DOPBSP_db_version_availability', 'DOPBSP_db_version_availability_no', 'DOPBSP_db_version_availability_price', 'DOPBSP_db_version_calendars', 'DOPBSP_db_version_coupons', 'DOPBSP_db_version_days', 'DOPBSP_db_version_days_available', 'DOPBSP_db_version_days_unavailable', 'DOPBSP_db_version_discounts', 'DOPBSP_db_version_discounts_items', 'DOPBSP_db_version_discounts_items_rules', 'DOPBSP_db_version_emails', 'DOPBSP_db_version_emails_translation', 'DOPBSP_db_version_extras', 'DOPBSP_db_version_extras_groups', 'DOPBSP_db_version_extras_groups_items', 'DOPBSP_db_version_fees', 'DOPBSP_db_version_forms', 'DOPBSP_db_version_forms_fields', 'DOPBSP_db_version_forms_select_options', 'DOPBSP_db_version_languages', 'DOPBSP_db_version_locations', 'DOPBSP_db_version_reservations', 'DOPBSP_db_version_rules', 'DOPBSP_db_version_searches', 'DOPBSP_db_version_settings', 'DOPBSP_db_version_settings_calendar', 'DOPBSP_db_version_settings_notifications', 'DOPBSP_db_version_settings_payment', 'DOPBSP_db_version_settings_search', 'DOPBSP_db_version_smses', 'DOPBSP_db_version_smses_translation', 'DOPBSP_db_version_translation', 'DOPBSP_request_rating', 'woocommerce_cart_redirect_after_add', 'DOPBSP_db_version_models', 'DOPBSP_users_permissions_administrator', 'DOPBSP_users_permissions_custom_posts_administrator', 'DOPBSP_users_permissions_author', 'DOPBSP_users_permissions_custom_posts_author', 'DOPBSP_users_permissions_contributor', 'DOPBSP_users_permissions_custom_posts_contributor', 'DOPBSP_users_permissions_editor', 'DOPBSP_users_permissions_custom_posts_editor', 'DOPBSP_users_permissions_subscriber', 'DOPBSP_users_permissions_custom_posts_subscriber');
DELETE FROM wp_options WHERE option_name LIKE 'DOPBSP_users_permissions_%';
DELETE FROM wp_options WHERE option_name LIKE 'DOPBSP_users_permissions_custom_posts_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version_database';
DELETE FROM wp_options WHERE option_name LIKE '%_languages';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dopbsp_woocommerce_calendar', 'dopbsp_woocommerce_language', 'dopbsp_woocommerce_position', 'dopbsp_woocommerce_add_to_cart', 'DOPBSP_permissions_calendars', 'DOPBSP_backend_language', 'DOPBSP_permissions_view', 'DOPBSP_permissions_use', 'DOPBSP_permissions_custom_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('dopbsp_woocommerce_calendar', 'dopbsp_woocommerce_language', 'dopbsp_woocommerce_position', 'dopbsp_woocommerce_add_to_cart', 'DOPBSP_permissions_calendars', 'DOPBSP_backend_language', 'DOPBSP_permissions_view', 'DOPBSP_permissions_use', 'DOPBSP_permissions_custom_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('dopbsp_woocommerce_calendar', 'dopbsp_woocommerce_language', 'dopbsp_woocommerce_position', 'dopbsp_woocommerce_add_to_cart', 'DOPBSP_permissions_calendars', 'DOPBSP_backend_language', 'DOPBSP_permissions_view', 'DOPBSP_permissions_use', 'DOPBSP_permissions_custom_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dopbsp_woocommerce_calendar', 'dopbsp_woocommerce_language', 'dopbsp_woocommerce_position', 'dopbsp_woocommerce_add_to_cart', 'DOPBSP_permissions_calendars', 'DOPBSP_backend_language', 'DOPBSP_permissions_view', 'DOPBSP_permissions_use', 'DOPBSP_permissions_custom_posts');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_language';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_language';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_language';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_language';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'DOPBSP_permissions_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'DOPBSP_permissions_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'DOPBSP_permissions_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'DOPBSP_permissions_%';

