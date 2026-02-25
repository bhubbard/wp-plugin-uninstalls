#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_disabled_elements'
wp option delete 'elementskit_options'
wp option delete '__validate_oppai__'
wp option delete 'elementskit-lite__plugin_activated'
wp option delete 'elementor_css_print_method'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementskit-lite-edit_with_emailkit_banner_dismissed_%'"
wp option delete 'elementskit-lite_install_date'
wp option delete 'elements_kit_onboard_status'
wp option delete 'elementskit_lite_activation_stamp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"
wp option delete 'gutenkit_do_activation_redirect'

# Delete Transients
wp transient delete 'ekit_element_manager_compatibity'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_custom_widget_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_custom_widget_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_custom_widget_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_custom_widget_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_condition_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_condition_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_condition_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_condition_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_condition_singular_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_condition_singular_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_condition_singular_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_condition_singular_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
