#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssl_disable_demo_import'
wp option delete 'ssl_disable_discount_widget'
wp option delete 'spiraclethemes_sitelib_install_date'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'ocdi_importer_data'
wp transient delete '_rafflepress_welcome_screen_activation_redirect'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete '_seedprod_welcome_screen_activation_redirect'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'pt_importer_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiraclethemes_sitelib_rating_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiraclethemes_sitelib_rating_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiraclethemes_sitelib_rating_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiraclethemes_sitelib_rating_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiraclethemes_sitelib_training_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiraclethemes_sitelib_training_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiraclethemes_sitelib_training_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiraclethemes_sitelib_training_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_0day_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_0day_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_0day_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_0day_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_7day_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_7day_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_7day_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_7day_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_14day_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_14day_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_14day_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_14day_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_28day_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_28day_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_28day_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_28day_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_60day_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_60day_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_60day_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiraclethemes_sitelib_49dollar_60day_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
