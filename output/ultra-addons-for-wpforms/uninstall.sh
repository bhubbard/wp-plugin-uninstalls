#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultrawpf_install_date'
wp option delete 'ultrawpf_upload_dir_created'
wp option delete 'uawpf_gs_client_id'
wp option delete 'uawpf_gs_client_secret'
wp option delete 'uawpf_gs_redirect_uri'
wp option delete 'uawpf_gs_token'
wp option delete 'wpforms_providers'
wp option delete 'ultrawpfpro_status'
wp option delete 'ultrawpf_settings'
wp option delete 'uawpf_promo__schedule_start_from'
wp option delete 'uawpf_promo__schedule_option'
wp option delete 'tf_promo_notice_exists'
wp option delete 'tf_promo_widget_exists'
wp option delete 'uawpf_dashboard_widget_dismissed'
wp option delete 'tf_dismiss_admin_notice'
wp option delete 'uawpf_dismiss_post_notice'
wp option delete 'ultrawpf_setup_wizard'
wp option delete 'ultrawpf_installed'
wp option delete 'ultrawpf_installed_time'
wp option delete 'ultrawpf_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs
wp cron event delete 'uawpf_promo__schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultrawpf_form_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultrawpf_form_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultrawpf_form_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultrawpf_form_opt'"
