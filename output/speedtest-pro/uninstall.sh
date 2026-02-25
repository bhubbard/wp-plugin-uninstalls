#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpspeedtestpro_selected_region'
wp option delete 'wpspeedtestpro_site_key'
wp option delete 'wpspeedtestpro_selected_provider'
wp option delete 'wpspeedtestpro_selected_package'
wp option delete 'wpspeedtestpro_allow_data_collection'
wp option delete 'wpspeedtestpro_latency_info_dismissed'
wp option delete 'wpspeedtestpro_continuous_testing'
wp option delete 'wpspeedtestpro_start_time'
wp option delete 'wpspeedtestpro_pagespeed_api_key'
wp option delete 'wpspeedtestpro_serverinfo_info_dismissed'
wp option delete 'wpspeedtestpro_continuous_test_status'
wp option delete 'wpspeedtestpro_continuous_test_start_time'
wp option delete 'wpspeedtestpro_performance_test_status'
wp option delete 'wpspeedtestpro_performance_info_dismissed'
wp option delete 'wpspeedtestpro_performance_test_results'
wp option delete 'wp_hosting_benchmarking_selected_region'
wp option delete 'wpspeedtestpro_user_country'
wp option delete 'wpspeedtestpro_options'
wp option delete 'wpspeedtestpro_uptimerobot_api_key'
wp option delete 'wpspeedtestpro_user_ssl_email'
wp option delete 'wpspeedtestpro_ssl_info_dismissed'
wp option delete 'wpspeedtestpro_uptimerobot_ping_id'
wp option delete 'wpspeedtestpro_uptimerobot_cron_id'
wp option delete 'wpspeedtestpro_uptime_info_dismissed'
wp option delete 'wpspeedtestpro_ping_filename'
wp option delete 'wpspeedtestpro_setup_completed'
wp option delete 'wpspeedtestpro_selected_provider_id'
wp option delete 'wpspeedtestpro_selected_package_id'
wp option delete 'wpspeedtestpro_pagespeed_settings'

# Delete Transients
wp transient delete 'wpspeedtestpro_ssl_results'
wp transient delete 'wpspeedtestpro_advertisers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpspeedtestpro_pagespeed_test_%' OR option_name LIKE '_site_transient_wpspeedtestpro_pagespeed_test_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpspeedtestpro_pagespeed_scheduled_test_%' OR option_name LIKE '_site_transient_wpspeedtestpro_pagespeed_scheduled_test_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpspeedtestpro_pagespeed_test_result_%' OR option_name LIKE '_site_transient_wpspeedtestpro_pagespeed_test_result_%'"

# Clear Cron Jobs
wp cron event delete 'wpspeedtestpro_sync_data'
wp cron event delete 'wpspeedtestpro_hourly_test'
wp cron event delete 'wpspeedtestpro_cron_hook'
wp cron event delete 'wpspeedtestpro_continuous_test'
wp cron event delete 'wpspeedtestpro_check_scheduled_pagespeed_tests'
wp cron event delete 'wpspeedtestpro_pagespeed_run_scheduled_tests'
wp cron event delete 'wpspeedtestpro_daily_pagespeed_check'
wp cron event delete 'wpspeedtestpro_pagespeed_check_scheduled_tests'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pagespeed_test_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pagespeed_test_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pagespeed_test_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pagespeed_test_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pagespeed_test_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pagespeed_test_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pagespeed_test_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pagespeed_test_url'"
