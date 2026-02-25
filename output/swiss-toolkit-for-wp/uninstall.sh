#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpswisstoolkitpro_license_options'
wp option delete 'max_file_size'
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'ReduxFrameworkPlugin_ACTIVATED_NOTICES'
wp option delete 'redux-framework_extendify_plugin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ense_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icense_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'redux_custom_font_current'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'auto_update_redux_google_fonts'
wp option delete '_redux_content_width'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-metaboxes' OR option_name LIKE '_site_transient_%-transients-metaboxes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-taxonomy' OR option_name LIKE '_site_transient_%-transients-taxonomy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-users' OR option_name LIKE '_site_transient_%-transients-users'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdstfw_code_snippets_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdstfw_code_snippets_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdstfw_code_snippets_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdstfw_code_snippets_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdstfw_code_snippets_textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdstfw_code_snippets_textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdstfw_code_snippets_textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdstfw_code_snippets_textarea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdstfw_code_snippets_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdstfw_code_snippets_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdstfw_code_snippets_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdstfw_code_snippets_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdstfw_code_snippets_toggle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdstfw_code_snippets_toggle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdstfw_code_snippets_toggle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdstfw_code_snippets_toggle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdstfw_encrypted_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdstfw_encrypted_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdstfw_encrypted_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdstfw_encrypted_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdstfw_swiss_expiration_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdstfw_swiss_expiration_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdstfw_swiss_expiration_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdstfw_swiss_expiration_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdstfw_swiss_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdstfw_swiss_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdstfw_swiss_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdstfw_swiss_usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdstfw_swiss_usage_limitation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdstfw_swiss_usage_limitation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdstfw_swiss_usage_limitation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdstfw_swiss_usage_limitation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdstfw_current_login_userId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdstfw_current_login_userId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdstfw_current_login_userId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdstfw_current_login_userId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boomdevs_swiss_avatar_uploader_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boomdevs_swiss_avatar_uploader_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boomdevs_swiss_avatar_uploader_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boomdevs_swiss_avatar_uploader_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swiss_usage_limitation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swiss_usage_limitation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swiss_usage_limitation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swiss_usage_limitation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swiss_usage_custom_limitation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swiss_usage_custom_limitation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swiss_usage_custom_limitation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swiss_usage_custom_limitation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
