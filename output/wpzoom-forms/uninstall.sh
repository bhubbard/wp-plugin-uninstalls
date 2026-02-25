#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpzoom_forms_welcome_guide_shown'
wp option delete 'wpzf-form_first-activate'
wp option delete 'wpzf_upsell_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzf_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzf_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzf_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzf_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzf_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzf_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzf_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzf_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_success_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_success_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_success_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_success_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_failure_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_failure_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_failure_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_failure_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_subject'"
