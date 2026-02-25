#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weforms_settings'
wp option delete 'wp-human-presence'
wp option delete '_weforms_aff_ref'
wp option delete 'weforms_review_notice_dismiss'
wp option delete 'weforms_installed'
wp option delete 'wpuf_general'
wp option delete 'weforms_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'weforms_dismiss_xnotice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'weforms_imported_xforms_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nf_form_%'"

# Delete Transients
wp transient delete 'weforms_activation_redirect'
wp transient delete 'weforms_prevent_tracker_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpuf_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpuf_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpuf_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpuf_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weforms_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weforms_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weforms_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weforms_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachment_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachment_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachment_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachment_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpuf_delete_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpuf_delete_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpuf_delete_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpuf_delete_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weforms_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weforms_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weforms_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weforms_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wef_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wef_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wef_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wef_form_id'"
