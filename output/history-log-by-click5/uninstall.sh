#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_history_log_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_history_log_module_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_history_log_token_%'"
wp option delete 'click5_history_log_technical_issue'
wp option delete 'click5_history_log_critical_error'
wp option delete 'click5_history_log_404'
wp option delete 'click5_history_log_alert_email'
wp option delete 'click5_history_log_better-search-replace-pro/better-search-replace.php'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'version_theme_%'"
wp option delete 'click5_history_log_history-log-by-click5/history-log-by-click5.php'
wp option delete 'click5_log_store_time'
wp option delete 'click5_history_log_clear_date'
wp option delete 'click5_history_log_email_template'
wp option delete 'click5_history_log_health-check/health-check.php'
wp option delete 'click5_history_log_loco-translate/loco.php'
wp option delete 'click5_history_log_backwpup/backwpup.php'
wp option delete 'click5_history_log_user-role-editor/user-role-editor.php'
wp option delete 'click5_history_log_sg-cachepress/sg-cachepress.php'
wp option delete 'click5_history_log_module_wordpress_core'
wp option delete 'my_db_version'
wp option delete 'click5_history_log_module_themes'
wp option delete 'click5_history_log_module_menu'
wp option delete 'click5_history_log_module_plugins'
wp option delete 'click5_history_log_module_users'
wp option delete 'click5_history_log_module_posts'
wp option delete 'click5_history_log_module_pages'
wp option delete 'click5_history_log_acf-extended/acf-extended.php'
wp option delete 'click5_history_log_module_media'
wp option delete 'click5_history_log_ninja-forms/ninja-forms.php'
wp option delete 'click5_history_log_better-search-replace/better-search-replace.php'
wp option delete 'click5_history_log_instagram-feed/instagram-feed.php'
wp option delete 'click5_history_log_advanced-custom-fields/acf.php'
wp option delete 'click5_history_log_advanced-custom-fields-pro/acf.php'
wp option delete 'click5_history_log_contact-form-7/wp-contact-form-7.php'
wp option delete 'click5_history_log_wpforms-lite/wpforms.php'
wp option delete 'click5_history_log_wpforms/wpforms.php'
wp option delete 'click5_history_log_redirection/redirection.php'
wp option delete 'click5_history_log_google-site-kit/google-site-kit.php'
wp option delete 'click5_history_log_wp-google-maps-pro/wp-google-maps-pro.php'
wp option delete 'click5_history_log_module_site_health'
wp option delete 'click5_history_log_classic-widgets/classic-widgets.php'
wp option delete 'click5_history_log_module_widgets'
wp option delete 'widget_block'
wp option delete 'click5_history_log_wp-google-maps/wpGoogleMaps.php'
wp option delete 'click5_history_log_jetpack/jetpack.php'
wp option delete 'click5_history_log_duplicate-post/duplicate-post.php'
wp option delete 'click5_history_log_all-in-one-wp-migration/all-in-one-wp-migration.php'
wp option delete 'click5_history_log_updraftplus/updraftplus.php'
wp option delete 'click5_history_log_duplicator/duplicator.php	'
wp option delete 'click5_history_log_polylang/polylang.php'
wp option delete 'polylang'
wp option delete 'click5_history_log_module_404_error'
wp option delete 'click5_history_log_string-locator/string-locator.php'
wp option delete 'click5_history_log_wp-mail-log/wp-mail-log.php'
wp option delete 'click5_history_log_module_settings'
wp option delete 'click5_history_log_module_wp_engine'
wp option delete 'click5_history_log_classic-editor/classic-editor.php'
wp option delete 'click5_history_log_wordpress-seo/wp-seo.php'
wp option delete 'click5_history_log_wordpress-seo-premium/wp-seo-premium.php'
wp option delete 'click5_history_log_seo-by-rank-math/rank-math.php'
wp option delete 'click5_history_log_seo-by-rank-math-pro/rank-math-pro.php'
wp option delete 'click5_history_log_all-in-one-seo-pack/all_in_one_seo_pack.php'
wp option delete 'click5_history_log_all-in-one-seo-pack-pro/all_in_one_seo_pack.php'
wp option delete 'click5_history_log_cf7-add-on-by-click5/cf7-addon-by-click5.php'
wp option delete 'click5_history_log_wpf-add-on-by-click5/wpf-addon-by-click5.php'
wp option delete 'click5_history_log_click5-crm-add-on-to-ninja-forms/ninja-addon-by-click5.php'
wp option delete 'click5_history_log_gf-add-on-by-click5/gf-addon-by-click5.php'
wp option delete 'click5_history_log_sitemap-by-click5/sitemap-by-click5.php'
wp option delete 'click5_history_log_disable-comments-by-click5/disable-comments-by-click5.php'
wp option delete 'click5_history_log_duplicator/duplicator.php'
wp option delete 'click5_history_log_limit-login-attempts-reloaded/limit-login-attempts-reloaded.php'
wp option delete 'limit_login_retries'
wp option delete 'limit_login_allowed_lockouts'
wp option delete 'limit_login_allowed_retries'
wp option delete 'limit_login_lockout_duration'
wp option delete 'limit_login_valid_duration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_history_log_authentication_token_%'"
wp option delete 'click5_history_log_wordfence/wordfence.php'
wp option delete 'click5_history_log_module_wordpress_users'

# Delete Transients
wp transient delete 'click5_history_log_mail_transient_technical'
wp transient delete 'bsr_results'
wp transient delete 'click5_history_log_mail_transient_critical'
wp transient delete 'healt_check_tests_count'
wp transient delete 'healt_check_tests_critical_count'
wp transient delete 'click5_history_log_polylang_post_translation_created'
wp transient delete 'click5_history_log_mail_transient_404'

# Clear Cron Jobs
wp cron event delete 'click5_add_every_minutes'
wp cron event delete 'sheduled_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'from_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'from_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'from_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'from_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppl_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppl_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppl_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppl_language'"
