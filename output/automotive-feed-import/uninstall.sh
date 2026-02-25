#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_xml_file_path'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_import_frequency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_title_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_content_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_field_mappings'"

# Delete Transients
wp transient delete 'afi_activation_notice'
wp transient delete 'afi_admin_notice'

# Clear Cron Jobs
wp cron event delete 'update_xml_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afi_activation_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afi_activation_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afi_activation_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afi_activation_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manufacturer_level2_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manufacturer_level2_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manufacturer_level2_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manufacturer_level2_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'year_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'year_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'year_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'year_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mileage_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mileage_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mileage_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mileage_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_afi_imported_image_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_afi_imported_image_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_afi_imported_image_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_afi_imported_image_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afi_feedback_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afi_feedback_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afi_feedback_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afi_feedback_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afi_survey_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afi_survey_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afi_survey_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afi_survey_dismissed'"
