#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oer_curriculum_details_curmetset_label'
wp option delete 'oer_curriculum_type_curmetset_label'
wp option delete 'oer_curriculum_type_other_curmetset_label'
wp option delete 'oer_curriculum_authors_curmetset_label'
wp option delete 'oer_curriculum_standardsandobjectives_curmetset_label'
wp option delete 'oer_curriculum_primary_resources_curmetset_label'
wp option delete 'oer_curriculum_iq_curmetset_label'
wp option delete 'oer_curriculum_required_materials_curmetset_label'
wp option delete 'oer_curriculum_additional_sections_curmetset_label'
wp option delete 'oer_curriculum_grades_curmetset_label'
wp option delete 'oer_curriculum_age_levels_curmetset_label'
wp option delete 'oer_curriculum_suggested_instructional_time_curmetset_label'
wp option delete 'oer_curriculum_standards_curmetset_label'
wp option delete 'oer_curriculum_related_objective_curmetset_label'
wp option delete 'oer_curriculum_download_copy_curmetset_label'
wp option delete 'oer_curriculum_oer_materials_curmetset_label'
wp option delete 'oer_curriculum_related_curriculum_curmetset_label'
wp option delete 'oer_curriculum_related_curriculum_1_curmetset_label'
wp option delete 'oer_curriculum_related_curriculum_2_curmetset_label'
wp option delete 'oer_curriculum_related_curriculum_3_curmetset_label'
wp option delete 'oer_curriculum_details_curmetset_enable'
wp option delete 'oer_curriculum_type_curmetset_enable'
wp option delete 'oer_curriculum_type_other_curmetset_enable'
wp option delete 'oer_curriculum_authors_curmetset_enable'
wp option delete 'oer_curriculum_standardsandobjectives_curmetset_enable'
wp option delete 'oer_curriculum_primary_resources_curmetset_enable'
wp option delete 'oer_curriculum_iq_curmetset_enable'
wp option delete 'oer_curriculum_required_materials_curmetset_enable'
wp option delete 'oer_curriculum_additional_sections_curmetset_enable'
wp option delete 'oer_curriculum_grades_curmetset_enable'
wp option delete 'oer_curriculum_age_levels_curmetset_enable'
wp option delete 'oer_curriculum_suggested_instructional_time_curmetset_enable'
wp option delete 'oer_curriculum_standards_curmetset_enable'
wp option delete 'oer_curriculum_related_objective_curmetset_enable'
wp option delete 'oer_curriculum_download_copy_curmetset_enable'
wp option delete 'oer_curriculum_oer_materials_curmetset_enable'
wp option delete 'oer_curriculum_related_curriculum_curmetset_enable'
wp option delete 'oer_curriculum_related_curriculum_1_curmetset_enable'
wp option delete 'oer_curriculum_related_curriculum_2_curmetset_enable'
wp option delete 'oer_curriculum_related_curriculum_3_curmetset_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'oer_curriculum_setup_notification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_label'"
wp option delete 'oer_curriculum_custom_editor_historical_background_curmetset_label'
wp option delete 'oer_curriculum_custom_editor_historical_background_curmetset_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_curmetset_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_curmetset_enable'"
wp option delete 'oercurr_import_default_grade_levels'
wp option delete 'oer_curriculum_general_setting'
wp option delete 'oer_curriculum_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_type_other'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_type_other'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_type_other'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_type_other'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_introduction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_introduction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_introduction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_introduction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_authors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_authors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_authors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_authors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_standards'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_standards'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_standards'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_standards'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_related_objective'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_related_objective'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_related_objective'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_related_objective'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_iq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_iq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_iq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_iq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_required_materials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_required_materials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_required_materials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_required_materials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_additional_sections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_additional_sections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_additional_sections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_additional_sections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_primary_resources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_primary_resources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_primary_resources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_primary_resources'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_oer_materials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_oer_materials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_oer_materials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_oer_materials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_grades'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_grades'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_grades'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_grades'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_age_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_age_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_age_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_age_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_suggested_instructional_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_suggested_instructional_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_suggested_instructional_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_suggested_instructional_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_custom_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_custom_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_custom_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_custom_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_text_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_text_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_text_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_text_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_download_copy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_download_copy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_download_copy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_download_copy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_download_copy_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_download_copy_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_download_copy_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_download_copy_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_curriculum_related_curriculum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_curriculum_related_curriculum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_curriculum_related_curriculum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_curriculum_related_curriculum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorurl2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorurl2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorurl2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorurl2'"
