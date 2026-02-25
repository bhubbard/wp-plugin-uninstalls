#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delivery_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expire'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_forbidden'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_link_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_link_css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_html_before'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_html_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_single_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_multi_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attachment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subject'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_from_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_cf7'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_multi_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hidden_form'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_radio'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_file_thumbnail'"
wp option delete 'email_before_download_multi_check'
wp option delete 'email_before_download_multi_email'
wp option delete 'email_before_download_single_email'
wp option delete 'email_before_download_subject'
wp option delete 'email_before_download_expire'
wp option delete 'email_before_download_forbidden'
wp option delete 'email_before_download_html_before'
wp option delete 'email_before_download_html_after'
wp option delete 'email_before_download_link_css'

