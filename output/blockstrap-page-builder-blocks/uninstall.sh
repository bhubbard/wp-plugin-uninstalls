#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayecode-ui-settings'
wp option delete 'blockstrap_recaptcha_keys'
wp option delete 'blockstrap_blocks_compatibility_notice'
wp option delete 'show_comments_cookies_opt_in'
wp option delete 'ayecode_connect_blog_token'
wp option delete 'aui_options'
wp option delete 'wp-font-awesome-settings'
wp option delete 'rgmk_google_map_api_key'

# Delete Transients
wp transient delete 'wp-font-awesome-settings-version'

# Clear Cron Jobs
wp cron event delete 'geodir_plugin_background_installer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bs_term_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bs_term_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bs_term_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bs_term_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bs_term_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bs_term_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bs_term_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bs_term_text_color'"
