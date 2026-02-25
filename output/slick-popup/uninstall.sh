#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'ReduxFrameworkPlugin_ACTIVATED_NOTICES'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'redux-framework_extendify_plugin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ense_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icense_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'redux_custom_font_current'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'auto_update_redux_google_fonts'
wp option delete 'redux_pro_license_status'
wp option delete 'themeisle_blocks_settings_default_block'
wp option delete 'redux_pro_license_key'
wp option delete '__uagb_do_redirect'
wp option delete '_redux_content_width'
wp option delete 'splite_review_notice'
wp option delete 'splite_install_date'
wp option delete 'splite_grant_access_time'
wp option delete 'splite_last_import'
wp option delete 'recently_activated'
wp option delete 'splite_delete_data'
wp option delete 'cf7_id'
wp option delete 'form_title'
wp option delete 'primary_color'
wp option delete 'border_color'
wp option delete 'form_description'
wp option delete 'side_image'
wp option delete 'splite_opts'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-metaboxes' OR option_name LIKE '_site_transient_%-transients-metaboxes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-users' OR option_name LIKE '_site_transient_%-transients-users'"
wp transient delete 'splite_updated'
wp transient delete 'splite_activated'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgmpa_dismissed_notice_myarcadetheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgmpa_dismissed_notice_myarcadetheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgmpa_dismissed_notice_myarcadetheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgmpa_dismissed_notice_myarcadetheme'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redux_templates_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redux_templates_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redux_templates_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redux_templates_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redux_welcome_guide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redux_welcome_guide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redux_welcome_guide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redux_welcome_guide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
