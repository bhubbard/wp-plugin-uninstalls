#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foxtool_font_settings'
wp option delete 'foxtool_settings'
wp option delete 'woocommerce_currency'
wp option delete 'foxtool_ads_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp option delete 'foxtool_code_settings'
wp option delete 'foxtool_debug_settings'
wp option delete 'foxtool_extend_settings'
wp option delete 'foxtool_fontset_settings'
wp option delete 'foxtool_gindex_settings'
wp option delete 'foxtool_notify_settings'
wp option delete 'foxtool_redirects_settings'
wp option delete 'foxtool_search_settings'
wp option delete 'foxtool_shortcode_settings'
wp option delete 'foxtool_toc_settings'

# Delete Transients
wp transient delete 'foxtool_index_count'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_languages'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_maybe_auto_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toc_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toc_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toc_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toc_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foxtoolpic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foxtoolpic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foxtoolpic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foxtoolpic'"
