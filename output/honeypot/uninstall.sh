#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpa_reviews_notice_hide'
wp option delete 'wpa_pateron_notice_hide'
wp option delete 'wpa_extended_notice_hide'
wp option delete 'wpa_installed_date'
wp option delete 'wpa_stats'
wp option delete 'wpa_field_name'
wp option delete 'wpa_error_message'
wp option delete 'wpa_disable_test_widget'
wp option delete 'wpa_disable_jquery'

