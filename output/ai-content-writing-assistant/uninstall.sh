#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_writing_assistant__collapse_aiwa'
wp option delete 'aiwa-placeholders'
wp option delete 'aiwa_rating_box_closed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%image_experiments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%new_images_with_existing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%number_of_image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ai-image-size'"
wp option delete 'ai_writing_assistant__api-key'
wp option delete 'aiwa_notices'
wp option delete 'aiwa_notices_clicked_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api-key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%previously_failed'"
wp option delete 'aiwa_wp_plugin_activation_date'
wp option delete 'aiwa_wp_plugin_dismissal_date'
wp option delete 'aiwa_wp_plugin_notice_closed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%titles-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%generate-title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ai-content-structure'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%select-topics-before-generate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%topics-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pros-and-cons-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list-items-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%faq-items-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%article-paragraphs-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%how_many_minutes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%first-person-name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%second-person-name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%temperature'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%max-tokens'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%top-p'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%best-of'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%frequency-penalty'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%presence-penalty'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add-call-to-action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%call-to-action-url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%call-to-action-position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add-introduction'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add-introduction-text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%introduction-size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add-conclusion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add-conclusion-text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%conclusion-size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add-excerpt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%excerpt_number_of_words'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%content-length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto-generate-image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%aiwa_language_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%select-title-before-generate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%how-many-titles-show-first'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%page_builders'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%collapse_aiwa'"
wp option delete 'aiwa_activation_check'
wp option delete 'ai_writing_assistant__user_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%aiwa-topics-tag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%writing-tone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%writing-style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%aiwa-language'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image'"

# Clear Cron Jobs
wp cron event delete 'aiwa_per_minutes_cron_task'
wp cron event delete 'aiwa_daily_schedules'
wp cron event delete 'aiwa_ai_generate_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
