#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%organization_id_import'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%organization_name_import'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%organization_id_export'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%chosen_terminals'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%organization_name_export'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%chosen_groups'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%menu_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%price_category_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%chosen_city_ids'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%all_cities'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%molnia_api_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%apiLogin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%iiko_product_categories'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%telegram'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%local'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%debug_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%debug_emails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%syrve_server'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%timeout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%molnia_api_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%molnia_api_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%export'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%import'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_plugin_settings'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%access_token' OR option_name LIKE '_site_transient_%access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%groups' OR option_name LIKE '_site_transient_%groups'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%sizes' OR option_name LIKE '_site_transient_%sizes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%services' OR option_name LIKE '_site_transient_%services'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%modifiers' OR option_name LIKE '_site_transient_%modifiers'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%modifier_groups_list' OR option_name LIKE '_site_transient_%modifier_groups_list'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
