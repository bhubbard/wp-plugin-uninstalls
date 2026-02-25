#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stsgt_settings_data'
wp option delete 'stsgt_site_speed_data'
wp option delete 'stsgt_cron_scanning_complete'
wp option delete 'stsgt_real_cron_obsv_started'
wp option delete 'stsgt_real_cron_obsv_checklists'
wp option delete 'stsgt_real_cron_obsv_post_page'
wp option delete 'stsgt_real_cron_obsv_post_ids'
wp option delete 'stsgt_cron_progress'
wp option delete 'stsgt_cron_total_progress'
wp option delete 'stsgt_checked_schema_markups'
wp option delete 'stsgt_robots_txt_content'
wp option delete 'stsgt_robots_prev_txt_content'
wp option delete 'stsgt_approve_tech_data'
wp option delete 'stsgt_total_http_array'
wp option delete 'stsgt_cron_observers'
wp option delete 'stsgt_last_audit'
wp option delete 'stsgt_cron_toggle'
wp option delete 'stsgt_peak_memory_limit'
wp option delete 'wp_mail_smtp'
wp option delete 'postman_options'
wp option delete 'easy_wp_smtp'
wp option delete 'smtp_mailer_options'
wp option delete 'fluentmail-settings'
wp option delete 'bricks_global_settings'
wp option delete 'et_divi'
wp option delete 'wpcaptcha_options'
wp option delete 'elementor_pro_recaptcha_site_key'
wp option delete 'elementor_pro_recaptcha_secret_key'
wp option delete 'elementor_pro_recaptcha_v3_site_key'
wp option delete 'elementor_pro_recaptcha_v3_secret_key'
wp option delete 'stsgt_analytics_fetch_time'
wp option delete 'stsgt_analytics_data'
wp option delete 'rank-math-options-sitemap'
wp option delete 'enable_xml_sitemap'
wp option delete 'stsgt_repeat_cron_timeout'
wp option delete 'stsgt_h1_tag_pages_offset'
wp option delete 'stsgt_total_http_coutns'
wp option delete 'stsgt_large_images'
wp option delete 'stsgt_recaptcha_pages'
wp option delete 'stsgt_h1_tag_pages'
wp option delete 'stsgt_redirect_permission'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'crontrol-cron-test-ok'
wp transient delete 'cached_site_health_data'

# Clear Cron Jobs
wp cron event delete 'stsgt_every_min_cron'
wp cron event delete 'stsgt_every_five_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stsgt_site_speed_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stsgt_site_speed_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stsgt_site_speed_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stsgt_site_speed_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
