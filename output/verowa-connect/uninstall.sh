#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'verowa_instance'
wp option delete 'verowa_api_key'
wp option delete 'verowa_kses_allowed_html_attr'
wp option delete 'verowa_events_exclude_from_search_engines'
wp option delete 'verowa_default_eventlist_template'
wp option delete 'verowa_default_eventdetails_template'
wp option delete 'verowa_keep_outdated_events_days'
wp option delete 'how_many_verowa_dropdowns'
wp option delete 'verowa_wordpress_listengruppe'
wp option delete 'verowa_show_full_text_search'
wp option delete 'verowa_show_agenda_date_filter'
wp option delete 'verowa_agenda_filter'
wp option delete 'verowa_agenda_ml_dropdowns_titel'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'verowa_dropdown_%'"
wp option delete 'verowa_persons_without_detail_page'
wp option delete 'verowa_persons_exclude_from_search_engines'
wp option delete 'verowa_default_personlist_template'
wp option delete 'verowa_default_persondetails_template'
wp option delete 'verowa_default_rosterlist_template'
wp option delete 'verowa_default_firstroster_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'verowa_translations_%'"
wp option delete 'verowa_subscriptions_settings'
wp option delete 'verowa_wpml_mapping'
wp option delete 'verowa_news_block_templates'
wp option delete 'verowa_datepicker_style_url'
wp option delete 'verowa_default_postingdetails_template'
wp option delete 'verowa_default_postinglist_template'
wp option delete 'verowa_module_infos'
wp option delete 'verowa_list_ids'
wp option delete 'verowa_targetgroups'
wp option delete 'verowa_hierarchical_layers_tree'
wp option delete 'verowa_subs_form_slug'
wp option delete 'verowa_agenda_reset_filter'
wp option delete 'verowa_api_url'
wp option delete 'widget_block'
wp option delete 'widget_custom_html'
wp option delete 'verowa_roster_ids'
wp option delete 'litespeed.conf.cache-exc'
wp option delete 'verowa_event_service_label'
wp option delete 'verowa_connect_db_version'
wp option delete 'verowa_connect_last_update_checks'
wp option delete 'verowa_person_has_detail_page'
wp option delete 'verowa_dynamic_agenda_events'
wp option delete 'verowa_dynamic_agenda_filter_array'
wp option delete 'verowa_dynamic_agenda_filter'
wp option delete 'verowa_agenda_batch_size'
wp option delete 'verowa_posting_categories'
wp option delete 'verowa_subs_form_url_part'

# Clear Cron Jobs
wp cron event delete 'verowa_connect_importer'
wp cron event delete 'sync_verowa_data_from_api'
wp cron event delete 'verowa_connect_postings_importer'
wp cron event delete 'verowa_connect_kika_importer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verowa_list_assign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verowa_list_assign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verowa_list_assign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verowa_list_assign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verowa_layer_assign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verowa_layer_assign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verowa_layer_assign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verowa_layer_assign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verowa_target_group_assign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verowa_target_group_assign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verowa_target_group_assign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verowa_target_group_assign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_events_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_events_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_events_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_events_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_list_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_list_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_list_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_list_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_eventlist_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_eventlist_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_eventlist_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_eventlist_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_person_singles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_person_singles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_person_singles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_person_singles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_event_datetime_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_event_datetime_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_event_datetime_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_event_datetime_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_event_search_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_event_search_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_event_search_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_event_search_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_event_list_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_event_list_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_event_list_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_event_list_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'VEROWA_HTML_HEAD'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'VEROWA_HTML_HEAD'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'VEROWA_HTML_HEAD'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'VEROWA_HTML_HEAD'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_sub_targets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_sub_targets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_sub_targets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_sub_targets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_has_person_options_on_post_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_has_person_options_on_post_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_has_person_options_on_post_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_has_person_options_on_post_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_persons_have_detail_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_persons_have_detail_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_persons_have_detail_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_persons_have_detail_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_person_show_group_function'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_person_show_group_function'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_person_show_group_function'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_person_show_group_function'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_person_show_profession'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_person_show_profession'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_person_show_profession'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_person_show_profession'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_person_show_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_person_show_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_person_show_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_person_show_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_person_show_person_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_person_show_person_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_person_show_person_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_person_show_person_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_person_show_person_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_person_show_person_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_person_show_person_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_person_show_person_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_person_short_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_person_short_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_person_short_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_person_short_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_personlist_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_personlist_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_personlist_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_personlist_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verowa_person_assign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verowa_person_assign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verowa_person_assign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verowa_person_assign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verowa_person_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verowa_person_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verowa_person_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verowa_person_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verowa_person_subgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verowa_person_subgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verowa_person_subgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verowa_person_subgroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verowa_person_group_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verowa_person_group_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verowa_person_group_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verowa_person_group_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_default_personlist_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_default_personlist_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_default_personlist_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_default_personlist_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verowa_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verowa_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verowa_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verowa_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
