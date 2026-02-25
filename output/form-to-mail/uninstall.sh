#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ftm_validate_required'
wp option delete 'ftm_validate_type'
wp option delete 'ftm_mail_failed'
wp option delete 'ftm_mail_success'
wp option delete 'ftm_mail'
wp option delete 'ftm_name'
wp option delete 'ftm_template_layout_if'
wp option delete 'ftm_template_layout'
wp option delete 'ftm_smtp_if'
wp option delete 'ftm_smtp_username'
wp option delete 'ftm_smtp_password'
wp option delete 'ftm_smtp_host'
wp option delete 'ftm_smtp_from'
wp option delete 'ftm_smtp_port'
wp option delete 'ftm_wp_all'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ftm_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ftm_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ftm_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ftm_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ftm_send_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ftm_send_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ftm_send_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ftm_send_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ftm_from_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ftm_from_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ftm_from_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ftm_from_email'"
