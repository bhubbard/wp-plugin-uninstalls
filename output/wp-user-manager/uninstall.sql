-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpum_setup_is_complete', 'wpum_version_upgraded_from', 'wpum_activation_date', 'wpum_version', 'wpum_data_installation_fix_check', 'wpum_permalink', 'wpum_email', 'v202_upgrade', 'wpum_emails', 'wpum_completed_upgrades', 'wpumv2_upgrade_completed', 'wpum_settings', 'carbon_custom_sidebars', 'tdp_dismissed_notices', 'wpum_get_pages', 'wpum_addons_feed', '_wpum_activation_redirect', 'wpum_get_roles', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_stripe_products';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('directory_roles', 'display_search_form', 'excluded_ids', 'profiles_per_page', 'directory_template', 'display_sorter', 'display_amount', 'default_sorting_method', 'first_name', 'last_name', 'description', 'nickname', '_user_cover_path', '_current_user_avatar_path', 'wpum_form_id', 'user_cover', '_wp_page_template', 'tdp_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('directory_roles', 'display_search_form', 'excluded_ids', 'profiles_per_page', 'directory_template', 'display_sorter', 'display_amount', 'default_sorting_method', 'first_name', 'last_name', 'description', 'nickname', '_user_cover_path', '_current_user_avatar_path', 'wpum_form_id', 'user_cover', '_wp_page_template', 'tdp_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('directory_roles', 'display_search_form', 'excluded_ids', 'profiles_per_page', 'directory_template', 'display_sorter', 'display_amount', 'default_sorting_method', 'first_name', 'last_name', 'description', 'nickname', '_user_cover_path', '_current_user_avatar_path', 'wpum_form_id', 'user_cover', '_wp_page_template', 'tdp_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('directory_roles', 'display_search_form', 'excluded_ids', 'profiles_per_page', 'directory_template', 'display_sorter', 'display_amount', 'default_sorting_method', 'first_name', 'last_name', 'description', 'nickname', '_user_cover_path', '_current_user_avatar_path', 'wpum_form_id', 'user_cover', '_wp_page_template', 'tdp_dismissed_notices');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpum_stripe_plan_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpum_stripe_plan_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpum_stripe_plan_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpum_stripe_plan_%';

