#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lmat_glossary_data'
wp option delete 'lmat_dismissed_notices'
wp option delete 'sidebars_widgets'
wp option delete 'linguator'
wp option delete 'linguator_install_date'
wp option delete 'linguator_initial_version'
wp option delete 'lmat_allowed_custom_fields'
wp option delete 'rewrite_rules'
wp option delete 'lmat_rewrite_rules_flushed'
wp option delete 'lmat_needs_rewrite_flush'
wp option delete 'polylang'
wp option delete 'lmat_migration_completed'
wp option delete 'lmat_custom_block_data'
wp option delete 'lmat_custom_block_translation'
wp option delete 'wp_attachment_pages_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'icl_sitepress_settings'
wp option delete 'lmat_language_taxonomies'
wp option delete 'lmat_language_from_content_available'
wp option delete 'cpt_dashboard_data'
wp option delete 'cpt_review_notice_dismissed'
wp option delete 'lmat_install_date'
wp option delete 'lmat_needs_setup'
wp option delete 'tww_is_legacy_user'
wp option delete 'dm_no_primary_domain'
wp option delete 'dm_301_redirect'
wp option delete 'lmat_elementor_templates_assigned'
wp option delete '_transient_lmat_languages_list'
wp option delete 'lmat_untranslated_content_handled'
wp option delete 'lmat_video_status'
wp option delete 'lmat_setup_complete'
wp option delete 'cpfm_opt_in_choice_lmat'
wp option delete 'tww_deprecation_notice_dismissed'
wp option delete 'tww_options_lines'
wp option delete 'widget_linguator_widget'
wp option delete 'linguator_licenses'

# Delete Transients
wp transient delete 'lmat_settings_errors'
wp transient delete 'lmat_featured_content_ids'
wp transient delete 'lmat_activation_redirect'
wp transient delete 'lmat_languages_list'

# Clear Cron Jobs
wp cron event delete 'lmat_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmat_filter_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmat_filter_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmat_filter_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmat_filter_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmat_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmat_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmat_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmat_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_strings_translations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_strings_translations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_strings_translations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_strings_translations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pll_strings_translations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pll_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_pending_linking_intent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_pending_linking_intent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_pending_linking_intent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_pending_linking_intent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_from_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_from_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_from_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_from_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_new_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_new_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_new_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_new_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_parent_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_parent_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_parent_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_parent_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_elementor_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_elementor_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_elementor_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_elementor_translated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_translate_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_translate_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_translate_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_translate_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_parent_post_language_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_parent_post_language_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_parent_post_language_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_parent_post_language_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmat_classic_translate_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmat_classic_translate_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmat_classic_translate_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmat_classic_translate_status'"
