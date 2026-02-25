#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jfb-license-data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%get-response-tab'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailchimp-tab'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active-campaign-tab'"
wp option delete 'jet_form_builder_settings__options-tab'

# Delete Transients
wp transient delete 'jfb_remote_addons_list'
wp transient delete 'update_plugins'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jf_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jf_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jf_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jf_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jet_sm_ready_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jet_sm_ready_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jet_sm_ready_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jet_sm_ready_style'"
