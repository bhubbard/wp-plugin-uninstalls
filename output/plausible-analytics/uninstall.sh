#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plausible_analytics_proxy_resources'
wp option delete 'plausible_analytics_wizard_done'
wp option delete 'plausible_analytics_created_mu_plugins_dir'
wp option delete 'plausible_analytics_proxy_speed_module_installed'
wp option delete 'plausible_analytics_enhanced_measurements_goal_ids'
wp option delete 'plausible_analytics_api_token_caps'
wp option delete 'plausible_analytics_version'
wp option delete 'plausible_analytics_settings'
wp option delete 'plausible_analytics_is_default_settings_saved'
wp option delete 'plausible_analytics_tracker_id'

# Delete Transients
wp transient delete 'plausible_analytics_module_install_failed_notice_dismissed'
wp transient delete 'plausible_analytics_proxy_test_failed_notice_dismissed'
wp transient delete 'plausible_analytics_notice'
wp transient delete 'plausible_analytics_valid_token'
wp transient delete 'plausible_analytics_notice_dismissed'

