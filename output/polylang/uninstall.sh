#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pll_language_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'pll_language_from_content_available'
wp option delete 'pll_dismissed_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp option delete 'wp_attachment_pages_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'polylang_wpml_strings'
wp option delete 'rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'polylang'
wp option delete 'dm_no_primary_domain'
wp option delete 'dm_301_redirect'
wp option delete 'polylang_licenses'
wp option delete 'widget_polylang'
wp option delete '_transient_pll_languages_list'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'pll_languages_list'
wp transient delete 'featured_content_ids'
wp transient delete 'pll_activation_redirect'
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'polylang_check_licenses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pll_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pll_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pll_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pll_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fallback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fallback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fallback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fallback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_filesize_total'"
