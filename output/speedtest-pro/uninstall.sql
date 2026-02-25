-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpspeedtestpro_selected_region', 'wpspeedtestpro_site_key', 'wpspeedtestpro_selected_provider', 'wpspeedtestpro_selected_package', 'wpspeedtestpro_allow_data_collection', 'wpspeedtestpro_latency_info_dismissed', 'wpspeedtestpro_continuous_testing', 'wpspeedtestpro_start_time', 'wpspeedtestpro_pagespeed_api_key', 'wpspeedtestpro_serverinfo_info_dismissed', 'wpspeedtestpro_continuous_test_status', 'wpspeedtestpro_continuous_test_start_time', 'wpspeedtestpro_performance_test_status', 'wpspeedtestpro_performance_info_dismissed', 'wpspeedtestpro_performance_test_results', 'wp_hosting_benchmarking_selected_region', 'wpspeedtestpro_user_country', 'wpspeedtestpro_options', 'wpspeedtestpro_uptimerobot_api_key', 'wpspeedtestpro_user_ssl_email', 'wpspeedtestpro_ssl_info_dismissed', 'wpspeedtestpro_uptimerobot_ping_id', 'wpspeedtestpro_uptimerobot_cron_id', 'wpspeedtestpro_uptime_info_dismissed', 'wpspeedtestpro_ping_filename', 'wpspeedtestpro_setup_completed', 'wpspeedtestpro_selected_provider_id', 'wpspeedtestpro_selected_package_id', 'wpspeedtestpro_pagespeed_settings', 'wpspeedtestpro_ssl_results', 'wpspeedtestpro_advertisers');
DELETE FROM wp_options WHERE option_name LIKE 'wpspeedtestpro_pagespeed_test_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpspeedtestpro_pagespeed_scheduled_test_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpspeedtestpro_pagespeed_test_result_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pagespeed_test_enabled', '_pagespeed_test_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pagespeed_test_enabled', '_pagespeed_test_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pagespeed_test_enabled', '_pagespeed_test_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pagespeed_test_enabled', '_pagespeed_test_url');

