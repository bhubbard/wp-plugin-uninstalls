#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_attachment_pages_enabled'
wp option delete 'ReduxFrameworkPlugin_ACTIVATED_NOTICES'
wp option delete 'redux-framework_extendify_plugin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ense_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icense_status'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_color_scheme'"
wp option delete 'redux_custom_font_current'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'auto_update_redux_google_fonts'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-metaboxes' OR option_name LIKE '_site_transient_%-transients-metaboxes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-taxonomy' OR option_name LIKE '_site_transient_%-transients-taxonomy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-users' OR option_name LIKE '_site_transient_%-transients-users'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
