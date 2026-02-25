#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'laci_internallinks_taxonomy'
wp option delete 'laci_num_item_dash'
wp option delete 'laci_related_box__content'
wp option delete 'laci_related_box__title'
wp option delete 'laci_related_box__title_color'
wp option delete 'laci_related_box__content_color'
wp option delete 'laci_related_box__bg_color'
wp option delete 'laci_related_box__bd_color'
wp option delete 'laci_related_box__bd_radius'
wp option delete 'laci_related_box__padding_top'
wp option delete 'laci_related_box__padding_right'
wp option delete 'laci_related_box__padding_bottom'
wp option delete 'laci_related_box__padding_left'
wp option delete 'laci_related_box__margin_top'
wp option delete 'laci_related_box__margin_right'
wp option delete 'laci_related_box__margin_bottom'
wp option delete 'laci_related_box__margin_left'
wp option delete 'laci_related_box__show_featured_image'
wp option delete 'laci_related_box__image'
wp option delete 'laci_related_box__image_width'
wp option delete 'laci_related_box__image_height'
wp option delete 'laci_handle_insert_data_all_total'
wp option delete 'laci_delete_shortcode_in_deactivate'
wp option delete 'laci_cron_job_status'
wp option delete 'laci_version'
wp option delete 'laci_handle_insert_data_offset'
wp option delete 'laci_last_updated_date'
wp option delete 'laci_last_updated_time'
wp option delete 'laci_internallinks_updated_for_taxonomy'
wp option delete 'laci_num_item_la'
wp option delete 'laci_delete_shortcode_in_delete'
wp option delete 'laci_license_key'

# Clear Cron Jobs
wp cron event delete 'laci_update_post_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'laci_list_key_word'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'laci_list_key_word'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'laci_list_key_word'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'laci_list_key_word'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'laci_main_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'laci_main_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'laci_main_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'laci_main_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'laci_main_term_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'laci_main_term_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'laci_main_term_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'laci_main_term_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'laci_main_post_for_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'laci_main_post_for_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'laci_main_post_for_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'laci_main_post_for_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
