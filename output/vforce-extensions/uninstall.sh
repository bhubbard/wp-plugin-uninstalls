#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_post_edit_rows'
wp option delete 'vforce_helper'
wp option delete 'zendash_widget1'
wp option delete 'zendash_widget2'
wp option delete 'zendash_widget3'
wp option delete 'zendash_widget4'
wp option delete 'zendash_widget5'
wp option delete 'zendash_widget6'
wp option delete 'zendash_widget7'
wp option delete 'zendash_widget8'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'association_id_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'association_id_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'association_id_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'association_id_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_form_assembly_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_form_assembly_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_form_assembly_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_form_assembly_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_assembly_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_assembly_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_assembly_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_assembly_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_assembly_hidden_input_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_assembly_hidden_input_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_assembly_hidden_input_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_assembly_hidden_input_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vforce_formassembly_review_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vforce_formassembly_review_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vforce_formassembly_review_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vforce_formassembly_review_header'"
