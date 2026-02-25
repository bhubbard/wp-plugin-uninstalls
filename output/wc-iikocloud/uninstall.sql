-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%organization_id_import';
DELETE FROM wp_options WHERE option_name LIKE '%organization_name_import';
DELETE FROM wp_options WHERE option_name LIKE '%organization_id_export';
DELETE FROM wp_options WHERE option_name LIKE '%chosen_terminals';
DELETE FROM wp_options WHERE option_name LIKE '%organization_name_export';
DELETE FROM wp_options WHERE option_name LIKE '%chosen_groups';
DELETE FROM wp_options WHERE option_name LIKE '%menu_id';
DELETE FROM wp_options WHERE option_name LIKE '%price_category_id';
DELETE FROM wp_options WHERE option_name LIKE '%chosen_city_ids';
DELETE FROM wp_options WHERE option_name LIKE '%all_cities';
DELETE FROM wp_options WHERE option_name LIKE '%molnia_api_on';
DELETE FROM wp_options WHERE option_name LIKE '%apiLogin';
DELETE FROM wp_options WHERE option_name LIKE '%iiko_product_categories';
DELETE FROM wp_options WHERE option_name LIKE '%telegram';
DELETE FROM wp_options WHERE option_name LIKE '%local';
DELETE FROM wp_options WHERE option_name LIKE '%debug_mode';
DELETE FROM wp_options WHERE option_name LIKE '%debug_emails';
DELETE FROM wp_options WHERE option_name LIKE '%syrve_server';
DELETE FROM wp_options WHERE option_name LIKE '%timeout';
DELETE FROM wp_options WHERE option_name LIKE '%molnia_api_id';
DELETE FROM wp_options WHERE option_name LIKE '%molnia_api_secret';
DELETE FROM wp_options WHERE option_name LIKE '%export';
DELETE FROM wp_options WHERE option_name LIKE '%import';
DELETE FROM wp_options WHERE option_name LIKE '%remove_plugin_settings';
DELETE FROM wp_options WHERE option_name LIKE '%access_token';
DELETE FROM wp_options WHERE option_name LIKE '%groups';
DELETE FROM wp_options WHERE option_name LIKE '%sizes';
DELETE FROM wp_options WHERE option_name LIKE '%services';
DELETE FROM wp_options WHERE option_name LIKE '%modifiers';
DELETE FROM wp_options WHERE option_name LIKE '%modifier_groups_list';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%group_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%group_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%group_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%group_id';

