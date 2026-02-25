#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cky_cookie_consent_lite_db_version'
wp option delete 'wt_cli_first_time_activated_plugin'
wp option delete 'cookielawinfo_privacy_overview_content_settings'
wp option delete 'cli_pg_content_data'
wp option delete 'CLI_BYPASS'
wp option delete 'finished_splitting_shared_terms'
wp option delete 'cookielawinfo_thirdparty_settings'
wp option delete 'cookielawinfo_necessary_settings'
wp option delete 'wt_cli_cookie_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_status'"
wp option delete 'wt_cli_db_version'
wp option delete 'wt_cli_version'
wp option delete 'wt_cli_cookieyes_options'
wp option delete 'wt_cli_ckyes_branding'
wp option delete 'wt_cli_ckyes_scan_options'
wp option delete 'cli_heading_version'
wp option delete 'cookielawinfo_js_blocking'
wp option delete 'cky_plugin_migrate_status'
wp option delete 'cli_script_blocker_status'
wp option delete 'cky_first_time_activated_plugin'
wp option delete 'cky_banner_template'
wp option delete 'cky_webapp_connected'
wp option delete 'cky_gcm_settings'
wp option delete 'cky_scan_details'
wp option delete 'cky_settings'
wp option delete 'cky_migration_options'
wp option delete 'cky_banners_table_version'
wp option delete 'cky_cookie_table_version'
wp option delete 'cky_cookie_category_table_version'
wp option delete 'cky_missing_tables'
wp option delete 'cky_connect_expand'
wp option delete 'cky_connect_notice'
wp option delete 'cky_file_write_access'
wp option delete 'cky_admin_notices'

# Delete Transients
wp transient delete '_wt_cli_first_time_activation'
wp transient delete 'wt_cli_script_blocker_notice'
wp transient delete '_cky_first_time_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_transient_prefix' OR option_name LIKE '_site_transient_%_transient_prefix'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cli_cookie_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cli_cookie_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cli_cookie_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cli_cookie_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cli_cookie_sensitivity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cli_cookie_sensitivity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cli_cookie_sensitivity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cli_cookie_sensitivity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cli_cookie_slugid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cli_cookie_slugid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cli_cookie_slugid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cli_cookie_slugid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cli_cookie_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cli_cookie_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cli_cookie_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cli_cookie_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CLIpriority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CLIpriority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CLIpriority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CLIpriority'"
