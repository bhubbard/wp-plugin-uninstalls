#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oer_enable_screenshot'
wp option delete 'oer_external_screenshots'
wp option delete 'oer_python_path'
wp option delete 'oer_python_install'
wp option delete 'oer_use_xvfb'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_structure'"
wp option delete 'oer_service_url'
wp option delete 'oer_disable_screenshots'
wp option delete 'oer_use_bootstrap'
wp option delete 'oer_display_subject_area'
wp option delete 'oer_hide_subject_area_title'
wp option delete 'oer_hide_resource_title'
wp option delete 'oer_additional_css'
wp option delete 'oer_only_additional_css'
wp option delete 'oer_import_sample_resources'
wp option delete 'oer_import_default_subject_areas'
wp option delete 'oer_import_ccss'
wp option delete 'oer_metadata_firstload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_label'"
wp option delete 'oer_external_pdf_viewer'
wp option delete 'oer_local_pdf_viewer'
wp option delete 'oer_highlight_label'
wp option delete 'oer_highlight_enabled'
wp option delete 'oer_age_levels_label'
wp option delete 'oer_age_levels_enabled'
wp option delete 'oer_instructional_time_label'
wp option delete 'oer_instructional_time_enabled'
wp option delete 'oer_creativecommons_license_label'
wp option delete 'oer_creativecommons_license_enabled'
wp option delete 'oer_format_label'
wp option delete 'oer_format_enabled'
wp option delete 'oer_datecreated_label'
wp option delete 'oer_datecreated_enabled'
wp option delete 'oer_datecreated_estimate_label'
wp option delete 'oer_datecreated_estimate_enabled'
wp option delete 'oer_datemodified_label'
wp option delete 'oer_datemodified_enabled'
wp option delete 'oer_mediatype_label'
wp option delete 'oer_mediatype_enabled'
wp option delete 'oer_lrtype_label'
wp option delete 'oer_lrtype_enabled'
wp option delete 'oer_interactivity_label'
wp option delete 'oer_interactivity_enabled'
wp option delete 'oer_userightsurl_label'
wp option delete 'oer_userightsurl_enabled'
wp option delete 'oer_isbasedonurl_label'
wp option delete 'oer_isbasedonurl_enabled'
wp option delete 'oer_standard_label'
wp option delete 'oer_standard_enabled'
wp option delete 'oer_authortype_label'
wp option delete 'oer_authortype_enabled'
wp option delete 'oer_authorname_label'
wp option delete 'oer_authorname_enabled'
wp option delete 'oer_authorurl_label'
wp option delete 'oer_authorurl_enabled'
wp option delete 'oer_authoremail_label'
wp option delete 'oer_authoremail_enabled'
wp option delete 'oer_publishername_enabled'
wp option delete 'oer_publisherurl_enabled'
wp option delete 'oer_publisheremail_enabled'
wp option delete 'oer_publishername_label'
wp option delete 'oer_publisherurl_label'
wp option delete 'oer_publisheremail_label'
wp option delete 'oer_external_repository_enabled'
wp option delete 'oer_repository_recordurl_enabled'
wp option delete 'oer_citation_enabled'
wp option delete 'oer_sensitive_material_enabled'
wp option delete 'oer_transcription_enabled'
wp option delete 'oer_external_repository_label'
wp option delete 'oer_repository_recordurl_label'
wp option delete 'oer_citation_label'
wp option delete 'oer_sensitive_material_label'
wp option delete 'oer_transcription_label'
wp option delete 'oer_related_resource_label'
wp option delete 'oer_related_resource_enabled'
wp option delete 'oer_import_default_grade_levels'
wp option delete 'oer_setup'
wp option delete 'oer_delete_standards_data'
wp option delete 'oer_delete_subject_areas_taxonomies'
wp option delete 'oer_delete_resources'
wp option delete 'oer_delete_resource_media'
wp option delete 'oer_remove_all_settings'
wp option delete 'oer_deactivate_plugin'
wp option delete 'oer_delete_plugin_files'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'oer_enable_search_filters'
wp option delete 'oer_enable_print_buttons'
wp option delete 'oer_resources_page_title'
wp option delete 'oer_resources_content'
wp option delete 'oer_nalrc_resources_page_title'
wp option delete 'oer_grade_label'
wp option delete 'oer_configurable_resource_path'
wp option delete 'oer_debug_mode'
wp option delete 'oer_use_fontawesome'
wp option delete 'oer_use_gutenberg'
wp option delete 'setup_notify'
wp option delete 'oer_rewrite_rules'
wp option delete 'oer_setup_bootstrap'
wp option delete 'oer_common_core_mathematics'
wp option delete 'oer_common_core_english'
wp option delete 'add_post_type_for_tax'

# Clear Cron Jobs
wp cron event delete 'wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_grade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_grade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_grade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_grade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_resourceurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_userasgnctgries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_userasgnctgries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_userasgnctgries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_userasgnctgries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_userasgnpages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_userasgnpages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_userasgnpages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_userasgnpages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_userasgnblog_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_userasgnblog_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_userasgnblog_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_userasgnblog_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_userasgnrsrc_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_userasgnrsrc_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_userasgnrsrc_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_userasgnrsrc_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mainIcon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mainIcon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mainIcon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mainIcon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hoverIcon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hoverIcon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hoverIcon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hoverIcon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_highlight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_highlight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_highlight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_highlight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_age_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_age_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_age_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_age_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_instructional_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_instructional_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_instructional_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_instructional_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_creativecommons_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_creativecommons_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_creativecommons_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_creativecommons_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_datecreated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_datecreated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_datecreated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_datecreated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_datecreated_estimate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_datecreated_estimate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_datecreated_estimate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_datecreated_estimate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_datemodified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_datemodified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_datemodified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_datemodified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_mediatype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_lrtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_lrtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_lrtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_lrtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_interactivity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_interactivity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_interactivity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_interactivity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_userightsurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_userightsurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_userightsurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_userightsurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_isbasedonurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_isbasedonurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_isbasedonurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_isbasedonurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_resource_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_resource_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_resource_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_resource_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_standard_alignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_standard_alignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_standard_alignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_standard_alignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_standard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_standard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_standard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_standard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authortype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authortype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authortype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authortype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authoremail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authoremail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authoremail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authoremail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authortype2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authortype2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authortype2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authortype2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorname2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authorurl2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authorurl2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authorurl2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authorurl2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_authoremail2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_authoremail2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_authoremail2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_authoremail2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_publishername'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_publishername'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_publishername'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_publishername'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_publisherurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_publisherurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_publisherurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_publisherurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_publisheremail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_publisheremail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_publisheremail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_publisheremail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_external_repository'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_external_repository'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_external_repository'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_external_repository'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_repository_recordurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_repository_recordurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_repository_recordurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_repository_recordurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_citation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_citation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_citation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_citation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_sensitive_material'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_sensitive_material'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_sensitive_material'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_sensitive_material'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_transcription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_transcription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_transcription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_transcription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oer_related_resource'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oer_related_resource'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oer_related_resource'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oer_related_resource'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enhance_page_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enhance_page_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enhance_page_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enhance_page_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pyre_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pyre_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pyre_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pyre_video'"
