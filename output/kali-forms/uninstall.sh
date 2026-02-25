#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_send_test_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_provider'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_host'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_auth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_disable_autotls'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_port'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_secure'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_com_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_com_sender_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sendin_blue_api'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_return_path'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mailgun_domain_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mailgun_private_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mailgun_region'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_postmark_server_api'"
wp option delete 'kaliforms_pro_license_key'
wp option delete 'wordpress_api_key'
wp option delete 'kaliforms_pro_license_status'
wp option delete 'kaliforms_pro_license_data'
wp option delete 'kaliforms_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_smtp_settings_dismissed'"
wp option delete 'kaliforms_smtp_auth'
wp option delete 'kaliforms_smtp_host'
wp option delete 'kaliforms_smtp_port'
wp option delete 'kaliforms_smtp_secure'
wp option delete 'kaliforms_smtp_username'
wp option delete 'kaliforms_smtp_password'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_rate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_updated_for_220'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smtp_advanced'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_save_ip_address'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_extensions' OR option_name LIKE '_site_transient_%_extensions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_latest_blog_posts' OR option_name LIKE '_site_transient_%_latest_blog_posts'"
wp transient delete 'kaliforms_extensions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kaliforms_dont_delete_this_image_%' OR option_name LIKE '_site_transient_kaliforms_dont_delete_this_image_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_welcome_activation_redirect' OR option_name LIKE '_site_transient_%_welcome_activation_redirect'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_field_components'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_field_components'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_field_components'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_field_components'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_multiple_selections_separator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_multiple_selections_separator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_multiple_selections_separator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_multiple_selections_separator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kaliforms_submission_view_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kaliforms_submission_view_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kaliforms_submission_view_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kaliforms_submission_view_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_delete_entries_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_delete_entries_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_delete_entries_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_delete_entries_after'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_selected_form_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_selected_form_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_selected_form_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_selected_form_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kaliforms_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kaliforms_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kaliforms_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kaliforms_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_payments_live'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_payments_live'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_payments_live'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_payments_live'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_paypal_client_id_sandbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_paypal_client_id_sandbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_paypal_client_id_sandbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_paypal_client_id_sandbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_paypal_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_paypal_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_paypal_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_paypal_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_currency'"
