#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_cpt_support'
wp option delete 'cc_admin_notices'
wp option delete 'ufel_later'
wp option delete 'ufel_vote'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_form_handle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_form_handle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_form_handle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_form_handle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_form_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_form_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_form_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_form_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_can_edit_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_can_edit_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_can_edit_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_can_edit_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_can_delete_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_can_delete_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_can_delete_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_can_delete_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_term_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_term_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_term_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_term_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_can_edit_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_can_edit_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_can_edit_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_can_edit_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_can_delete_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_can_delete_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_can_delete_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_can_delete_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_can_edit_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_can_edit_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_can_edit_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_can_edit_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__fael_can_delete_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__fael_can_delete_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__fael_can_delete_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__fael_can_delete_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fael_forms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fael_forms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fael_forms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fael_forms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fael_widgets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fael_widgets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fael_widgets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fael_widgets'"
