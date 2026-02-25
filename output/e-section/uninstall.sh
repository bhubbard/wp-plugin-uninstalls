#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'e_section_db_ver'
wp option delete 'print_tag_options'
wp option delete 'export_posts_tag'
wp option delete 'export_posts_no_posts'
wp option delete 'e_sections_additional_sections'
wp option delete 'export_post_tag'
wp option delete 'e_sections_spectal_section_pages'
wp option delete 'dk-test'
wp option delete 'akwt_distribution_circulation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e_section_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e_section_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e_section_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e_section_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e_section_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e_section_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e_section_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e_section_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e_section_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e_section_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e_section_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e_section_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_e_section_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_e_section_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_e_section_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_e_section_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'export-posts-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'export-posts-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'export-posts-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'export-posts-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'breakout_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'breakout_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'breakout_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'breakout_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e-sec-quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e-sec-quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e-sec-quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e-sec-quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%filters'"
