#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_magic_page_spintax_expressions'
wp option delete 'aio_wp_security_configs'
wp option delete 'XAGIO_API'
wp option delete 'using_application_passwords'
wp option delete 'XAGIO_ONBOARDING_LOCATION'
wp option delete 'XAGIO_ONBOARDING_KEYWORD'
wp option delete 'XAGIO_ONBOARDING_MAIN_KEYWORD'
wp option delete 'XAGIO_AI_WIZARD_TOP_TEN'
wp option delete 'XAGIO_BACKUP_LIMIT'
wp option delete 'XAGIO_BACKUP_LOCATION'
wp option delete 'XAGIO_BACKUP_DATE'
wp option delete 'XAGIO_HIDDEN'
wp option delete 'XAGIO_SCHEMA_ALWAYS_ON'
wp option delete 'XAGIO_RECAPTCHA'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugins'"
wp option delete 'XAGIO_FEATURES'
wp option delete 'XAGIO_MEMBERSHIP'
wp option delete 'XAGIO_LICENSE_EMAIL'
wp option delete 'XAGIO_LICENSE_KEY'
wp option delete 'current_theme'
wp option delete 'XAGIO_SEO_GLOBAL_SCRIPTS_HEAD'
wp option delete 'XAGIO_SEO_GLOBAL_SCRIPTS_BODY'
wp option delete 'XAGIO_SEO_GLOBAL_SCRIPTS_FOOTER'
wp option delete 'XAGIO_LOCATION_DEFAULT_SEARCH_ENGINE'
wp option delete 'XAGIO_LOCATION_DEFAULT_COUNTRY'
wp option delete 'XAGIO_LOCATION_DEFAULT_CITY'
wp option delete 'XAGIO_ACCOUNT_DETAILS'
wp option delete 'XAGIO_OCW'
wp option delete 'XAGIO_SEO_SCHEMA_META'
wp option delete 'XAGIO_SEO_SCHEMA_DATA'
wp option delete 'XAGIO_CURRENT_VERSION'
wp option delete 'XAGIO_SHARED_SCRIPTS'
wp option delete 'XAGIO_BACKUP_SETTINGS'
wp option delete 'XAGIO_API_SETTINGS'
wp option delete 'XAGIO_MIGRATION_COMPLETED'
wp option delete 'XAGIO_DEV_MODE'
wp option delete 'XAGIO_SEO_PROFILES'
wp option delete 'XAGIO_BACKUPS_IGNORE_DOMAINS'
wp option delete 'XAGIO_BACKUP_SPEED'
wp option delete 'XAGIO_BACKUP_SIZE'
wp option delete 'XAGIO_MIGRATE_SEO_NOTICE'
wp option delete 'XAGIO_MIGRATE_SEO'
wp option delete 'XAGIO_MIGRATE_RANKMATH'
wp option delete 'wpseo_titles'
wp option delete 'XAGIO_SEO_DEFAULT_POST_TYPES'
wp option delete 'XAGIO_SEO_DEFAULT_TAXONOMIES'
wp option delete 'XAGIO_MIGRATE_YOAST'
wp option delete 'XAGIO_MIGRATE_AIO'
wp option delete 'XAGIO_REDIRECT_MASK'
wp option delete 'XAGIO_GOOGLE_SEARCH_WINDOW_BROAD'
wp option delete 'XAGIO_GOOGLE_SEARCH_WINDOW_PHRASE'
wp option delete 'XAGIO_GOOGLE_SEARCH_WINDOW_INTITLE'
wp option delete 'XAGIO_GOOGLE_SEARCH_WINDOW_INURL'
wp option delete 'XAGIO_NICHE_HUNTER_TLDS'
wp option delete 'elementor-custom-breakpoints-files'
wp option delete '_elementor_assets_data'
wp option delete 'sidebars_widgets'
wp option delete 'widget_block'
wp option delete 'kadence_global_colors'
wp option delete 'kadence_global_typography'
wp option delete 'XAGIO_LOCATION_DEFAULT_KEYWORD_COUNTRY'
wp option delete 'XAGIO_LOCATION_DEFAULT_KEYWORD_LANGUAGE'
wp option delete 'XAGIO_LOCATION_DEFAULT_AI_SEARCH_ENGINE'
wp option delete 'XAGIO_LOCATION_DEFAULT_AI_LOCATION'
wp option delete 'XAGIO_CF_TEMPLATES'
wp option delete 'XAGIO_CF_DEFAULT_TEMPLATE'
wp option delete 'XAGIO_PROJECT_ALERT_ID'
wp option delete 'XAGIO_KEYWORD_ERROR'
wp option delete 'xagio_ONBOARDING_MAIN_KEYWORD'
wp option delete 'xagio_ai_wizard_audit_lang_code'
wp option delete 'xagio_ai_wizard_audit_lang_code_code'
wp option delete 'xagio_ai_wizard_contain_keyword_text'
wp option delete 'xagio_ai_wizard_contain_keyword'
wp option delete 'xagio_ai_wizard_is_relative'
wp option delete 'xagio_ONBOARDING_LOCATION'
wp option delete 'XAGIO_LOCATION_DEFAULT_AUDIT_LANGUAGE'
wp option delete 'XAGIO_DISABLE_404_LOGS'
wp option delete 'XAGIO_ENABLE_SPIDER_404'
wp option delete 'XAGIO_ENABLE_404_REF_URL'
wp option delete 'XAGIO_IGNORE_404_URLS'
wp option delete 'XAGIO_MAX_LOG_LIMIT'
wp option delete 'XAG_MIGRATE_REF'
wp option delete 'XAGIO_GLOBAL_404_REDIRECTION_URL'
wp option delete 'XAGIO_DISABLE_AUTOMATIC_REDIRECTS'
wp option delete 'XAGIO_REVIEW'
wp option delete 'XAGIO_DISABLE_REVIEW_WIDGET_CSS_JS'
wp option delete 'XAGIO_DEFAULTS'
wp option delete '_magicpage_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'XAGIO_DEFAULTS_MAGICPAGE_%'"
wp option delete 'XAGIO_ENABLE_SITEMAPS'
wp option delete 'XAGIO_SITEMAP_CONTENT_SETTINGS'
wp option delete 'XAGIO_SEO_FORCE_ENABLE'
wp option delete 'XAGIO_SEO_DEFAULT_MISCELLANEOUS'
wp option delete 'XAGIO_FORCE_HOMEPAGE_SCHEMA'
wp option delete 'XAGIO_RENDER_PRETTY_SCHEMAS'
wp option delete 'XAGIO_DISABLE_WP_CANONICALS'
wp option delete 'XAGIO_DISABLE_HTML_FOOTPRINT'
wp option delete 'XAGIO_DISABLE_SCRIPTS_LOGGED_IN'
wp option delete 'XAGIO_DONT_INDEX_SUBPAGES'
wp option delete 'XAGIO_USE_META_KEYWORD'
wp option delete 'XAGIO_SEO_FORCE_NOODP'
wp option delete 'XAGIO_SEO_DEFAULT_CUSTOM_POST_TYPES'
wp option delete 'XAGIO_SEO_DEFAULT_POST_OG'
wp option delete 'XAGIO_SEO_VERIFICATION_GOOGLE_TAG_BODY'
wp option delete 'XAGIO_SEO_VERIFICATION_GOOGLE_ANALYTICS'
wp option delete 'XAGIO_SEO_VERIFICATION_GOOGLE_ANALYTICS_4'
wp option delete 'XAGIO_SEO_VERIFICATION_GOOGLE_TAG_HEAD'
wp option delete 'XAGIO_SEO_VERIFICATION_BING'
wp option delete 'XAGIO_SEO_VERIFICATION_GOOGLE'
wp option delete 'XAGIO_SEO_VERIFICATION_PINTEREST'
wp option delete 'XAGIO_SEO_VERIFICATION_YANDEX'
wp option delete 'XAGIO_SEO_DEFAULT_OG'
wp option delete 'XAGIO_SEO_TITLE_SEPARATOR'
wp option delete 'XAGIO_DISABLE_UPLOADS'
wp option delete 'XAGIO_DISABLE_MAINTENANCE'
wp option delete 'XAGIO_REMOVE_CATEGORY_BASE'
wp option delete 'XAGIO_RECAPTCHA_SITE_KEY'
wp option delete 'XAGIO_RECAPTCHA_SECRET_KEY'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xagio_silo_%'"
wp option delete 'XAGIO_SILO_IDS_PAGES'
wp option delete 'XAGIO_SILO_IDS_POSTS'
wp option delete 'XAGIO_SILO_PAGES'
wp option delete 'XAGIO_SILO_POSTS'
wp option delete 'xagio_silo_links'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xagio_silo_ids_%'"
wp option delete 'XAGIO_SITEMAP_COMPRESSION'
wp option delete 'XAGIO_CACHE_SITEMAPS'
wp option delete 'xagio_sitemaps_needs_rebuild'

# Delete Transients
wp transient delete 'xagio_remoteLoginToken'
wp transient delete 'xagio_agentx_homepage_group_id'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'xagio_deactivating'
wp transient delete 'xagio_links_transient'
wp transient delete 'XAGIO_MIGRATE_SEO_NOTICE'
wp transient delete 'xagio_missing_image_editor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_xagio_keyword_suggestions_%' OR option_name LIKE '_site_transient_xagio_keyword_suggestions_%'"
wp transient delete 'xagio_sitemaps_invalidate_debounce'
wp transient delete 'xagio_sitemaps_rebuild_lock'
wp transient delete 'xagio_sitemaps'

# Clear Cron Jobs
wp cron event delete 'xagio_doBackup'
wp cron event delete 'XAGIO_CHECK_LICENSE'
wp cron event delete 'xagio_getAPIKeys'
wp cron event delete 'xagio_getBackupSettings'
wp cron event delete 'xagio_getSharedScripts'
wp cron event delete 'xagio_getMembershipInfo'
wp cron event delete 'XAGIO_Dropbox_Process_Upload'
wp cron event delete 'XAGIO_GoogleDrive_Process_Upload'
wp cron event delete 'XAGIO_OnedriveClient_Process_Upload'
wp cron event delete 'XAGIO_S3_Process_Upload'
wp cron event delete 'xagio_calculate_backup_size'
wp cron event delete 'xagio_run_ocw_wizard'
wp cron event delete 'xagio_checkKeywordBatches'
wp cron event delete 'xagio_checkKeywordVolumeBatches'
wp cron event delete 'xagio_set_default_post_settings'
wp cron event delete 'xagio_set_default_taxonomy_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_TITLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_TITLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_TITLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_TITLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_DESCRIPTION'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_DESCRIPTION'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_DESCRIPTION'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_DESCRIPTION'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_disable_global_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_disable_global_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_disable_global_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_disable_global_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_body_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_body_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_body_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_body_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_footer_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_footer_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_footer_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_footer_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_disable_global_body_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_disable_global_body_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_disable_global_body_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_disable_global_body_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_disable_global_footer_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_disable_global_footer_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_disable_global_footer_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_disable_global_footer_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_disable_page_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_disable_page_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_disable_page_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_disable_page_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_disable_page_body_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_disable_page_body_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_disable_page_body_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_disable_page_body_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_disable_page_footer_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_disable_page_footer_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_disable_page_footer_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_disable_page_footer_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_META'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_META'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_META'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_META'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_DATA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_DATA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_DATA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_DATA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data_xag_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data_xag_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data_xag_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data_xag_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_TARGET_KEYWORD'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_TARGET_KEYWORD'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_TARGET_KEYWORD'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_TARGET_KEYWORD'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_TITLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_TITLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_TITLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_TITLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_TITLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_TWITTER_TITLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_TITLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_TITLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_DESCRIPTION'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_DESCRIPTION'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_DESCRIPTION'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_DESCRIPTION'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_DESCRIPTION'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_TWITTER_DESCRIPTION'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_DESCRIPTION'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_DESCRIPTION'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_IMAGE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_IMAGE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_IMAGE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_FACEBOOK_IMAGE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_IMAGE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_TWITTER_IMAGE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_IMAGE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_TWITTER_IMAGE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_meta_robots_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_meta_robots_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_meta_robots_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_meta_robots_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_CANONICAL_URL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_CANONICAL_URL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_CANONICAL_URL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_CANONICAL_URL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_NOTES'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_NOTES'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_NOTES'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_NOTES'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_ROBOTS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_ROBOTS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_ROBOTS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_ROBOTS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_seo_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_seo_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_seo_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_seo_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_ENABLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_ENABLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_ENABLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SCHEMA_ENABLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_HEADER_SCRIPTS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_ENABLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_ENABLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_ENABLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_ENABLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_HEADER'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_HEADER'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_HEADER'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_HEADER'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_FOOTER_SCRIPTS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_FOOTER'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_FOOTER'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_FOOTER'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_FOOTER'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_PAGE_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_DISABLE_GLOBAL_BODY_SCRIPTS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_BODY'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_BODY'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_BODY'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SCRIPTS_BODY'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SEARCH_PREVIEW_ENABLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SEARCH_PREVIEW_ENABLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SEARCH_PREVIEW_ENABLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SEARCH_PREVIEW_ENABLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ENABLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ENABLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ENABLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ENABLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_SOCIAL_ENABLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_SOCIAL_ENABLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_SOCIAL_ENABLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_SOCIAL_ENABLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ADVANCED'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ADVANCED'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ADVANCED'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'XAGIO_SEO_META_ROBOTS_ADVANCED'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_permalink'"
