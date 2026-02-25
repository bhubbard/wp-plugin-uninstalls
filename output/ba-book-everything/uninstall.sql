-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('babe_tmp_settings', 'default_post_edit_rows', 'babe_wp_export_ran', 'BABE_version', 'BABE_db_version', 'BABE_db_upgrading', 'babe_settings', 'BABE_roles_version', '_babe_demo_images', '_babe_posts_need_rewrite_rules', 'babe-payment-banner-notice', 'babe_installing');
DELETE FROM wp_options WHERE option_name LIKE 'babe_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('included_dates', 'excluded_dates', 'guests', '_coupon_num', '_coupon_amount_applied', 'conditional_prices', 'schedule', '_coupon_num_update', 'tmp_post_title', 'tmp_post_content', 'tmp_featured_image_id', '_thumbnail_id', 'start_date', '_start_date_before', 'end_date', '_end_date_before', 'cyclic_start_every', '_cyclic_start_every_before', 'cyclic_av', '_cyclic_av_before', '_included_dates_before', '_excluded_dates_before', '_guests_before', 'tmp_featured_image', '_order_id', '_coupon_booking_category', '_coupon_booking_items', '_coupon_percent', '_coupon_amount', '_coupon_number', '_coupon_status', '_coupon_usage', '_coupon_usage_limit', '_coupon_end_date', 'zero_price_display_value', '_email_new_order', 'address', '_yoast_wpseo_metadesc', 'min_guests', 'use_main_age_only_for_min_guests', 'data_type', 'data_corrected', 'gmap_active', 'select_mode', 'frontend_style', 'menu_order', 'categories_week', 'categories_booking_rule', 'categories_add_taxes', 'categories_taxonomies');
DELETE FROM wp_usermeta WHERE meta_key IN ('included_dates', 'excluded_dates', 'guests', '_coupon_num', '_coupon_amount_applied', 'conditional_prices', 'schedule', '_coupon_num_update', 'tmp_post_title', 'tmp_post_content', 'tmp_featured_image_id', '_thumbnail_id', 'start_date', '_start_date_before', 'end_date', '_end_date_before', 'cyclic_start_every', '_cyclic_start_every_before', 'cyclic_av', '_cyclic_av_before', '_included_dates_before', '_excluded_dates_before', '_guests_before', 'tmp_featured_image', '_order_id', '_coupon_booking_category', '_coupon_booking_items', '_coupon_percent', '_coupon_amount', '_coupon_number', '_coupon_status', '_coupon_usage', '_coupon_usage_limit', '_coupon_end_date', 'zero_price_display_value', '_email_new_order', 'address', '_yoast_wpseo_metadesc', 'min_guests', 'use_main_age_only_for_min_guests', 'data_type', 'data_corrected', 'gmap_active', 'select_mode', 'frontend_style', 'menu_order', 'categories_week', 'categories_booking_rule', 'categories_add_taxes', 'categories_taxonomies');
DELETE FROM wp_termmeta WHERE meta_key IN ('included_dates', 'excluded_dates', 'guests', '_coupon_num', '_coupon_amount_applied', 'conditional_prices', 'schedule', '_coupon_num_update', 'tmp_post_title', 'tmp_post_content', 'tmp_featured_image_id', '_thumbnail_id', 'start_date', '_start_date_before', 'end_date', '_end_date_before', 'cyclic_start_every', '_cyclic_start_every_before', 'cyclic_av', '_cyclic_av_before', '_included_dates_before', '_excluded_dates_before', '_guests_before', 'tmp_featured_image', '_order_id', '_coupon_booking_category', '_coupon_booking_items', '_coupon_percent', '_coupon_amount', '_coupon_number', '_coupon_status', '_coupon_usage', '_coupon_usage_limit', '_coupon_end_date', 'zero_price_display_value', '_email_new_order', 'address', '_yoast_wpseo_metadesc', 'min_guests', 'use_main_age_only_for_min_guests', 'data_type', 'data_corrected', 'gmap_active', 'select_mode', 'frontend_style', 'menu_order', 'categories_week', 'categories_booking_rule', 'categories_add_taxes', 'categories_taxonomies');
DELETE FROM wp_commentmeta WHERE meta_key IN ('included_dates', 'excluded_dates', 'guests', '_coupon_num', '_coupon_amount_applied', 'conditional_prices', 'schedule', '_coupon_num_update', 'tmp_post_title', 'tmp_post_content', 'tmp_featured_image_id', '_thumbnail_id', 'start_date', '_start_date_before', 'end_date', '_end_date_before', 'cyclic_start_every', '_cyclic_start_every_before', 'cyclic_av', '_cyclic_av_before', '_included_dates_before', '_excluded_dates_before', '_guests_before', 'tmp_featured_image', '_order_id', '_coupon_booking_category', '_coupon_booking_items', '_coupon_percent', '_coupon_amount', '_coupon_number', '_coupon_status', '_coupon_usage', '_coupon_usage_limit', '_coupon_end_date', 'zero_price_display_value', '_email_new_order', 'address', '_yoast_wpseo_metadesc', 'min_guests', 'use_main_age_only_for_min_guests', 'data_type', 'data_corrected', 'gmap_active', 'select_mode', 'frontend_style', 'menu_order', 'categories_week', 'categories_booking_rule', 'categories_add_taxes', 'categories_taxonomies');
DELETE FROM wp_postmeta WHERE meta_key IN ('categories_step_by_step', 'categories_step_title', 'categories_services', 'categories_services_title', 'categories_faq', 'categories_faq_title', 'categories_remove_guests', 'categories_address', 'categories_gmap_active', 'related_items', 'contacts', '_order_hash', '_order_admin_hash', '_order_currency', 'email', 'admin_to_customer_notes', '_customer_user', '_refunded_amount', '_status', '_order_number', '_total_amount', '_prepaid_amount', '_payment_gateway_fee_percents', '_payment_gateway_fee_title', '_payment_method', '_prepaid_received', '_payment_token_id', '_payment_model', 'deposit_fixed', '_order_start', '_order_end', '_order_availability_confirm', '_locale', 'description', 'image_id', 'all_level_terms_selectable', 'require_full_payment_when_less_than_days', 'use_main_age_only_for_guests_in_conditional_prices', 'price_type', 'price', '_rating', 'phone', '_manager_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('categories_step_by_step', 'categories_step_title', 'categories_services', 'categories_services_title', 'categories_faq', 'categories_faq_title', 'categories_remove_guests', 'categories_address', 'categories_gmap_active', 'related_items', 'contacts', '_order_hash', '_order_admin_hash', '_order_currency', 'email', 'admin_to_customer_notes', '_customer_user', '_refunded_amount', '_status', '_order_number', '_total_amount', '_prepaid_amount', '_payment_gateway_fee_percents', '_payment_gateway_fee_title', '_payment_method', '_prepaid_received', '_payment_token_id', '_payment_model', 'deposit_fixed', '_order_start', '_order_end', '_order_availability_confirm', '_locale', 'description', 'image_id', 'all_level_terms_selectable', 'require_full_payment_when_less_than_days', 'use_main_age_only_for_guests_in_conditional_prices', 'price_type', 'price', '_rating', 'phone', '_manager_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('categories_step_by_step', 'categories_step_title', 'categories_services', 'categories_services_title', 'categories_faq', 'categories_faq_title', 'categories_remove_guests', 'categories_address', 'categories_gmap_active', 'related_items', 'contacts', '_order_hash', '_order_admin_hash', '_order_currency', 'email', 'admin_to_customer_notes', '_customer_user', '_refunded_amount', '_status', '_order_number', '_total_amount', '_prepaid_amount', '_payment_gateway_fee_percents', '_payment_gateway_fee_title', '_payment_method', '_prepaid_received', '_payment_token_id', '_payment_model', 'deposit_fixed', '_order_start', '_order_end', '_order_availability_confirm', '_locale', 'description', 'image_id', 'all_level_terms_selectable', 'require_full_payment_when_less_than_days', 'use_main_age_only_for_guests_in_conditional_prices', 'price_type', 'price', '_rating', 'phone', '_manager_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('categories_step_by_step', 'categories_step_title', 'categories_services', 'categories_services_title', 'categories_faq', 'categories_faq_title', 'categories_remove_guests', 'categories_address', 'categories_gmap_active', 'related_items', 'contacts', '_order_hash', '_order_admin_hash', '_order_currency', 'email', 'admin_to_customer_notes', '_customer_user', '_refunded_amount', '_status', '_order_number', '_total_amount', '_prepaid_amount', '_payment_gateway_fee_percents', '_payment_gateway_fee_title', '_payment_method', '_prepaid_received', '_payment_token_id', '_payment_model', 'deposit_fixed', '_order_start', '_order_end', '_order_availability_confirm', '_locale', 'description', 'image_id', 'all_level_terms_selectable', 'require_full_payment_when_less_than_days', 'use_main_age_only_for_guests_in_conditional_prices', 'price_type', 'price', '_rating', 'phone', '_manager_id', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'stop_booking_before_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'stop_booking_before_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'stop_booking_before_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'stop_booking_before_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'items_number%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'items_number%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'items_number%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'items_number%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_items_number_before%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_items_number_before%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_items_number_before%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_items_number_before%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'start_time_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'start_time_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'start_time_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'start_time_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'code_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'code_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'code_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'code_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'duration_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'duration_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'duration_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'duration_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'last_av_booking_time_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'last_av_booking_time_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'last_av_booking_time_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'last_av_booking_time_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'nights_blocked_for_housekeeping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'nights_blocked_for_housekeeping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'nights_blocked_for_housekeeping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'nights_blocked_for_housekeeping_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rating_score_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rating_score_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rating_score_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rating_score_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rating_votes_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rating_votes_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rating_votes_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rating_votes_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rating_%';

