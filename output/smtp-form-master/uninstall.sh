#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smtpfm_smtp_settings'
wp option delete 'smtpfm_recaptcha_settings'
wp option delete 'smtpfm_email_templates'
wp option delete 'smtpfm_version'
wp option delete 'smtpfm_install_date'
wp option delete 'smtpfm_upgrade_date'

# Delete Transients
wp transient delete 'smtpfm_upgraded_to_2'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smtpfm_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smtpfm_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smtpfm_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smtpfm_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smtpfm_skin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smtpfm_skin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smtpfm_skin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smtpfm_skin'"
