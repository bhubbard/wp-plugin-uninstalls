#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bg_forreaders_zoom'
wp option delete 'bg_forreaders_generate_opds'
wp option delete 'bg_forreaders_before'
wp option delete 'bg_forreaders_after'
wp option delete 'bg_forreaders_single'
wp option delete 'bg_forreaders_excat'
wp option delete 'bg_forreaders_cats'
wp option delete 'bg_forreaders_type_post'
wp option delete 'bg_forreaders_type_page'
wp option delete 'bg_forreaders_while_displayed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bg_forreaders_%'"
wp option delete 'bg_forreaders_links'
wp option delete 'bg_forreaders_prompt'
wp option delete 'bg_forreaders_separator'
wp option delete 'bg_forreaders_while_saved'
wp option delete 'bg_forreaders_offline_query'
wp option delete 'bg_forreaders_stack'
wp option delete 'bg_forreaders_cron_updated'
wp option delete 'bg_forreaders_stack_interval'
wp option delete 'bg_forreaders_all_checktime'
wp option delete 'bg_forreaders_all_interval'
wp option delete 'bg_forreaders_log_checktime'
wp option delete 'bg_forreaders_log_interval'
wp option delete 'bg_forreaders_book_folder'
wp option delete 'bg_forreaders_while_starttime'
wp option delete 'bg_forreaders_pdf'
wp option delete 'bg_forreaders_epub'
wp option delete 'bg_forreaders_mobi'
wp option delete 'bg_forreaders_fb2'
wp option delete 'bg_forreaders_author_field'
wp option delete 'bg_forreaders_publishing_year'
wp option delete 'bg_forreaders_genre'
wp option delete 'bg_forreaders_add_title'
wp option delete 'bg_forreaders_add_author'
wp option delete 'bg_forreaders_cover_title'
wp option delete 'bg_forreaders_cover_author'
wp option delete 'bg_forreaders_cover_site'
wp option delete 'bg_forreaders_cover_year'
wp option delete 'bg_forreaders_cover_thumb'
wp option delete 'bg_forreaders_cover_image'
wp option delete 'bg_forreaders_text_color'
wp option delete 'bg_forreaders_bg_color'
wp option delete 'bg_forreaders_left_offset'
wp option delete 'bg_forreaders_right_offset'
wp option delete 'bg_forreaders_top_offset'
wp option delete 'bg_forreaders_bottom_offset'
wp option delete 'bg_forreaders_memory_limit'
wp option delete 'bg_forreaders_time_limit'
wp option delete 'bg_forreaders_css'
wp option delete 'bg_forreaders_tags'
wp option delete 'bg_forreaders_extlinks'
wp option delete 'bg_forreaders_allow_p'

# Clear Cron Jobs
wp cron event delete 'bg_forreaders_stack_cron_action'
wp cron event delete 'bg_forreaders_all_cron_action'
wp cron event delete 'bg_forreaders_log_cron_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'for_readers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'for_readers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'for_readers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'for_readers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'genre'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'genre'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'genre'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'genre'"
