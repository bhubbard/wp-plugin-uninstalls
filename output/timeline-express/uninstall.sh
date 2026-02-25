#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_type_rules_flushed_te-announcements'
wp option delete 'timeline_express_installed_add_ons'
wp option delete 'timeline_express_cache_enabled'
wp option delete 'timeline-express_rating_nobug'
wp option delete 'timeline_express_install_date'
wp option delete 'timeline_express_storage'
wp option delete 'timeline_express_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nobug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking'"
wp option delete 'timeline-express_nobug'

# Delete Transients
wp transient delete 'timeline_express_ad_transient'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeline-express-query-%' OR option_name LIKE '_site_transient_timeline-express-query-%'"
wp transient delete 'te_font_awesome_transient'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'test_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'test_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'test_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'test_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rest_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rest_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rest_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rest_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'field_test_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'field_test_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'field_test_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'field_test_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_container_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_container_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_container_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_container_classes'"
