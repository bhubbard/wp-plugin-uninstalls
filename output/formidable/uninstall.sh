#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frm_connect_token'
wp option delete 'frm_install_running'
wp option delete 'frmpro-credentials'
wp option delete 'frmpro-authorized'
wp option delete 'frm_db_version'
wp option delete 'frm_feedback_expired'
wp option delete 'frm_lite_settings_upgrade'
wp option delete 'frm_last_style_update'
wp option delete 'frm_first_activation'
wp option delete 'frm_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_activate'"
wp option delete 'frm_last_cleared'
wp option delete 'frm_antispam_secret_key'
wp option delete 'ftp_credentials'
wp option delete 'wordpress_api_key'
wp option delete 'frm_form_state_key'
wp option delete 'frm_honeypot_class'
wp option delete 'frm_inbox'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp option delete 'frm_options'
wp option delete 'frm-usage-uuid'
wp option delete 'frmpro_css'
wp option delete 'widget_frm_show_form'
wp option delete 'frm_sale_ab_group'
wp option delete 'frm_admin_menu_name'
wp option delete 'recaptcha'
wp option delete 'disallowed_keys'
wp option delete 'frm_square_lite_last_verify_attempt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'frm_stripe_lite_last_verify_attempt'

# Delete Transients
wp transient delete 'frm_updating_api'
wp transient delete 'frmpro_css'
wp transient delete 'frm_api_licence'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%excludeinclude' OR option_name LIKE '_site_transient_%excludeinclude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%includeinclude' OR option_name LIKE '_site_transient_%includeinclude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%includeexclude' OR option_name LIKE '_site_transient_%includeexclude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%excludeexclude' OR option_name LIKE '_site_transient_%excludeexclude'"
wp transient delete 'frm_options'
wp transient delete 'frmpro_options'
wp transient delete 'formidable_plugin_data'
wp transient delete 'frm_recent_spam_detected'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_frm_square_last_process_%' OR option_name LIKE '_site_transient_frm_square_last_process_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_frm_last_process_%' OR option_name LIKE '_site_transient_frm_last_process_%'"

# Clear Cron Jobs
wp cron event delete 'formidable_send_usage'
wp cron event delete 'frm_payment_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
