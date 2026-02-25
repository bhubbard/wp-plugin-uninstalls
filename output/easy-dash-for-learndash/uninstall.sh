#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tred_panel_widgets_to_show'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tred_get_students_number_%' OR option_name LIKE '_site_transient_tred_get_students_number_%'"
wp transient delete 'tred_get_access_modes_existent'
wp transient delete 'tred_get_students_number_all_courses'
wp transient delete 'tred_get_lessons_topics_quizzes_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_days' OR option_name LIKE '_site_transient_%_days'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tred_learndash_get_item_all_time_activity_%' OR option_name LIKE '_site_transient_tred_learndash_get_item_all_time_activity_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ld_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ld_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ld_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ld_price_type'"
