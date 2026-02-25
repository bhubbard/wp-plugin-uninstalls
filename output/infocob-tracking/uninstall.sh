#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infocob_tracking_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infocob_tracking_admin_form_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infocob_tracking_admin_form_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infocob_tracking_admin_form_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infocob_tracking_admin_form_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infocob_tracking_admin_form_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infocob_tracking_admin_form_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infocob_tracking_admin_form_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infocob_tracking_admin_form_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infocob_tracking_admin_form_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infocob_tracking_admin_form_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infocob_tracking_admin_form_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infocob_tracking_admin_form_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue_no_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue_no_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue_no_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infocob_tracking_admin_form_sendinblue_no_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infocob_tracking_admin_form_email_demande_html'"
