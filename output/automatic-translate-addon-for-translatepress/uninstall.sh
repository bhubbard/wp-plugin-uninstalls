#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpa_feedback_opt_in'
wp option delete 'tpa-install-date'
wp option delete 'tpa_initial_save_version'
wp option delete 'cpt_dashboard_data'
wp option delete 'cpt_review_notice_dismissed'
wp option delete 'tpa_provider_yandex_enabled'
wp option delete 'tpa_provider_chrome_enabled'
wp option delete 'cpfm_opt_in_choice_cool_translations'
wp option delete 'trp_settings'
wp option delete 'tpa_chrome_ai_bypass_api_check'
wp option delete 'tpa_chrome_ai_bypass_secure_check'
wp option delete 'tpa_chrome_ai_bypass_browser_check'
wp option delete 'tpa_do_activation_redirect'
wp option delete 'tpa-v'
wp option delete 'tpa-type'
wp option delete 'tpa-installDate'
wp option delete 'tpa-ratingDiv'
wp option delete 'tpa_chrome_ai_bypass_security_check'

# Clear Cron Jobs
wp cron event delete 'tpa_extra_data_update'

