#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pr_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_term_%'"
wp option delete 'pr_theme_root'
wp option delete 'pr_theme_uri'
wp option delete 'pressroom_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pr_valid_license_%'"
wp option delete 'p2p_storage'
wp option delete '_pr_table_db_version'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pr_preview_linked_query_%' OR option_name LIKE '_site_transient_pr_preview_linked_query_%'"

# Clear Cron Jobs
wp cron event delete 'pr_checkexpiredtoken'
wp cron event delete 'pr_clean_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_sharing_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_sharing_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_sharing_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_sharing_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_theme_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_theme_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_theme_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_theme_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_web_override_eproject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_web_override_eproject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_web_override_eproject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_web_override_eproject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_package_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_package_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_package_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_package_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_package_updated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_package_updated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_package_updated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_package_updated_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pr_addons_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pr_addons_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pr_addons_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pr_addons_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pr_themes_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pr_themes_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pr_themes_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pr_themes_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_html_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_html_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_html_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_html_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_packager_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_packager_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_packager_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_packager_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_edition_free'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_edition_free'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_edition_free'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_edition_free'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pr_product_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pr_product_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pr_product_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pr_product_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_index_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_index_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_index_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_index_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_subscriptions_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_subscriptions_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_subscriptions_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_subscriptions_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_newsstand_issue_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_newsstand_issue_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_newsstand_issue_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_newsstand_issue_cover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pr_edition_hpub_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pr_edition_hpub_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pr_edition_hpub_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pr_edition_hpub_%'"
