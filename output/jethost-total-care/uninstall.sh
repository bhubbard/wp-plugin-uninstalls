#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdtocas_site_password'
wp option delete 'wpdtocas_redirect_settings'
wp option delete 'wpdtocas_rss_disabled'
wp option delete 'wpdtocas_emojis_disabled'
wp option delete 'wpdtocas_dashicons_disabled'
wp option delete 'wpdtocas_jquery_migrate_disabled'
wp option delete 'wpdtocas_heartbeat_admin'
wp option delete 'wpdtocas_heartbeat_frontend'
wp option delete 'wpdtocas_heartbeat_editor'
wp option delete 'wpdtocas_disable_post_comments'
wp option delete 'wpdtocas_disable_page_comments'
wp option delete 'wpdtocas_disable_attachment_comments'
wp option delete 'wpdtocas_hide_post_comments'
wp option delete 'wpdtocas_hide_page_comments'
wp option delete 'wpdtocas_hide_attachment_comments'
wp option delete 'wpdtocas_db_error'
wp option delete 'wpdtocas_disable_rsd'
wp option delete 'wpdtocas_disable_wlw'
wp option delete 'wpdtocas_disable_embeds'
wp option delete 'wpdtocas_limit_login_attempts'
wp option delete 'wpdtocas_max_login_attempts'
wp option delete 'wpdtocas_lockout_time'
wp option delete 'wpdtocas_disable_author_archives'
wp option delete 'wpdtocas_custom_author_base_enabled'
wp option delete 'wpdtocas_custom_author_base'
wp option delete 'wpdtocas_disable_enumeration'
wp option delete 'wpdtocas_disable_rest_users'
wp option delete 'wpdtocas_custom_login_enabled'
wp option delete 'wpdtocas_custom_login_slug'
wp option delete 'wpdtocas_hide_admin_bar'
wp option delete 'wpdtocas_enable_duplicator'
wp option delete 'wpdtocas_custom_login_logo'
wp option delete 'wpdtocas_disable_theme_editor'
wp option delete 'wpdtocas_disable_plugin_editor'
wp option delete 'wpdtocas_disable_gutenberg'
wp option delete 'wpdtocas_password_protect'
wp option delete 'wpdtocas_custom_redirect'
wp option delete 'wpdtocas_under_maintenance'
wp option delete 'wpdtocas_last_optimization_run'
wp option delete 'wpdtocas_scheduled_optimization_enabled'
wp option delete 'wpdtocas_scheduled_optimization_type'
wp option delete 'wpdtocas_scheduled_optimization_options'
wp option delete 'wpdtocas_comments_disabled'
wp option delete 'jethost_total_care_headers_migrated'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpdtocas_login_attempts_%' OR option_name LIKE '_site_transient_wpdtocas_login_attempts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpdtocas_locked_%' OR option_name LIKE '_site_transient_wpdtocas_locked_%'"

# Clear Cron Jobs
wp cron event delete 'wpdtocas_scheduled_optimization'

