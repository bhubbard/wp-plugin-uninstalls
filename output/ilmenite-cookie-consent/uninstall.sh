#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ilcc_policy_url'
wp option delete 'ilcc_title'
wp option delete 'ilcc_text'
wp option delete 'ilcc_button'
wp option delete 'ilcc_only_necessary_text'
wp option delete 'ilcc_configure_settings_text'
wp option delete 'ilcc_style'
wp option delete 'ilcc_settings_necessary_heading'
wp option delete 'ilcc_settings_necessary_description'
wp option delete 'ilcc_settings_marketing_heading'
wp option delete 'ilcc_settings_marketing_description'
wp option delete 'ilcc_settings_analytics_heading'
wp option delete 'ilcc_settings_analytics_description'
wp option delete 'ilcc_save_settings_text'
wp option delete 'ilcc_settings_title'
wp option delete 'ilcc_settings_description'
wp option delete 'ilcc_settings_analytics_is_shown'
wp option delete 'ilcc_settings_marketing_is_shown'
wp option delete 'ilcc_domains_necessary'
wp option delete 'ilcc_domains_analytics'
wp option delete 'ilcc_domains_marketing'

