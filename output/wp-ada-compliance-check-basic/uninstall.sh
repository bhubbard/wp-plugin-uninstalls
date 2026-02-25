#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ada_compliance_basic_posttypes'
wp option delete 'wp_ada_compliance_basic_import_inprocess'
wp option delete 'wp_ada_compliance_basic_enablewave'
wp option delete 'wp_ada_compliance_basic_retain_settings'
wp option delete 'wp_ada_compliance_basic_scan_rules'
wp option delete 'wp_ada_compliance_basic_ignore_scan_rules'
wp option delete 'wp_ada_compliance_basic_version'
wp option delete 'wp_ada_compliance_basic_rescan_required'
wp option delete 'wp_ada_compliance_basic_settingsusers'
wp option delete 'wp_ada_compliance_basic_report_filtered_errors'
wp option delete 'wp_ada_compliance_errors_per_page'
wp option delete 'wp_ada_compliance_basic_cron_count'
wp option delete 'wp_ada_compliance_basic_notification_frequency'
wp option delete 'wp_ada_compliance_strip_autoplay'
wp option delete 'wp_ada_compliance_basic_background_color'
wp option delete 'wp_ada_compliance_basic_forground_color'
wp option delete 'wp_ada_compliance_basic_attachmenttitles'
wp option delete 'wp_ada_compliance_basic_starting_h_level'
wp option delete 'wp_ada_compliance_basic_foreground_color'
wp option delete 'wp_ada_compliance_basic_notification_email'
wp option delete 'wp_ada_compliance_basic_filter_content'
wp option delete 'wp_ada_compliance_basic_full_scan_post_count'
wp option delete 'wp_ada_compliance_basic_use_accessibility_widget'
wp option delete 'wp_ada_compliance_basic_use_browser_extension'
wp option delete 'wp_ada_compliance_basic_errors_per_page'
wp option delete 'wp_ada_compliance_basic_language_code'
wp option delete 'wp_ada_compliance_basic_scan_increment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
