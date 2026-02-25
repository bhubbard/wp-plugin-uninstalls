#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpfm_opt_in_choice_cool_translations'
wp option delete 'atfp_feedback_opt_in'
wp option delete 'cpt_dashboard_data'
wp option delete 'atfp_custom_block_data'
wp option delete 'atfp_custom_block_status'
wp option delete 'atfp-install-date'
wp option delete 'atfp_initial_save_version'
wp option delete 'cpt_review_notice_dismissed'
wp option delete 'atfp-v'
wp option delete 'atfp_translation_string_migration'
wp option delete 'atfp-type'
wp option delete 'atfp-installDate'
wp option delete 'atfp_custom_block_translation'
wp option delete 'cpel_autopoly_installed'

# Clear Cron Jobs
wp cron event delete 'atfp_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atfp_elementor_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atfp_elementor_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atfp_elementor_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atfp_elementor_translated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atfp_elementor_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atfp_elementor_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atfp_elementor_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atfp_elementor_translated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atfp_parent_post_language_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atfpp_elementor_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atfpp_elementor_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atfpp_elementor_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atfpp_elementor_translated'"
