#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'futura_title_text'
wp option delete 'futura_html_posts_wrap_bg_color'
wp option delete 'futura_html_border_color'
wp option delete 'futura_html_border_title_color'
wp option delete 'futura_html_h3_font_size'
wp option delete 'futura_post_title_font_size'
wp option delete 'futura_summary_font_size'
wp option delete 'futura_author_font_size'
wp option delete 'futura_deactivate_style'
wp option delete 'futura_items_display'
wp option delete 'futura_custom_post_setting'
wp option delete 'futura_custom_post_not_show_setting'
wp option delete 'futura_custom_fields_setting'
wp option delete 'futura_record_setting'
wp option delete 'futura_number_of_posts'
wp option delete 'futura_display'
wp option delete 'futura_displya_device'
wp option delete 'futura_default_thumbnail'
wp option delete 'futura_content_percentage'
wp option delete 'futura_title_percentage'
wp option delete 'futura_excerpt_percentage'
wp option delete 'futura_image_percentage'
wp option delete 'futura_tag_percentage'
wp option delete 'futura_tax_percentage'
wp option delete 'futura_cf_percentage'
wp option delete 'futura_author_percentage'
wp option delete 'futura_custom_post_types_s'
wp option delete 'futura_search-custom_field_setting'
wp option delete 'futura_license'
wp option delete 'futura_paged'
wp option delete 'futura_user_id'
wp option delete 'futura_stored_version'
wp option delete 'futura_last_action_time'
wp option delete 'futura_min_tag_count'
wp option delete 'futura_payment_status'
wp option delete 'futura_check_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'futura_percentage_for_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'futura_percentage_for_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'futura_percentage_for_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'futura_percentage_for_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'futura_exclude_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'futura_exclude_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'futura_exclude_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'futura_exclude_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'futura_related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'futura_related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'futura_related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'futura_related_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'futura_include_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'futura_include_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'futura_include_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'futura_include_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'futura_mutal_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'futura_mutal_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'futura_mutal_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'futura_mutal_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'futura_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'futura_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'futura_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'futura_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'futura_click_record'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'futura_click_record'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'futura_click_record'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'futura_click_record'"
