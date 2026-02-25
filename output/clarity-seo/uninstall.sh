#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clarity_seo_activation_time'
wp option delete 'clarity_seo_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'clarity_seo_%'"
wp option delete 'clarity_seo_gsc_access_token'
wp option delete 'clarity_seo_social_links'
wp option delete 'clarity_seo_logo_url'
wp option delete 'clarity_seo_contact_phone'
wp option delete 'clarity_seo_auto_image_alt'
wp option delete 'clarity_seo_local_address'
wp option delete 'clarity_seo_redirects'
wp option delete 'clarity_seo_tracked_keywords'
wp option delete 'clarity_seo_default_og_image'
wp option delete 'clarity_seo_wizard_completed'
wp option delete 'clarity_seo_db_version'
wp option delete 'clarity_seo_404_logs'
wp option delete 'clarity_seo_gsc_site_url'
wp option delete 'clarity_seo_local_geo'
wp option delete 'clarity_seo_organization_description'
wp option delete 'clarity_seo_contact_type'
wp option delete 'clarity_seo_enable_organization'
wp option delete 'clarity_seo_enable_faq'
wp option delete 'clarity_seo_enable_video'
wp option delete 'clarity_seo_enable_multiple'
wp option delete 'clarity_seo_default_keywords'
wp option delete 'clarity_seo_gsc_key'
wp option delete 'clarity_seo_keyword_history'

# Clear Cron Jobs
wp cron event delete 'clarity_seo_email_reports'
wp cron event delete 'clarity_seo_cleanup_404'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_focus_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_focus_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_focus_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_focus_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clarity_seo_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clarity_seo_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clarity_seo_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clarity_seo_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarity_seo_include_org'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarity_seo_include_org'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarity_seo_include_org'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarity_seo_include_org'"
