#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'academyc_default_certificate_id'
wp option delete 'academyc_required_rewrite_flush'
wp option delete 'academy_pro_version'
wp option delete 'academyc_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_style'"
