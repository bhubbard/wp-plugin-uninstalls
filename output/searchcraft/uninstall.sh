#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'searchcraft_filter_taxonomies'
wp option delete 'searchcraft_use_publishpress_authors'
wp option delete 'searchcraft_use_molongui_authorship'
wp option delete 'searchcraft_builtin_post_types'
wp option delete 'searchcraft_custom_post_types'
wp option delete 'searchcraft_custom_post_types_with_fields'
wp option delete 'searchcraft_selected_custom_fields'
wp option delete 'searchcraft_excerpt_field_overrides'
wp option delete 'searchcraft_search_experience'
wp option delete 'searchcraft_search_behavior'
wp option delete 'searchcraft_search_placeholder'
wp option delete 'searchcraft_input_padding'
wp option delete 'searchcraft_input_vertical_padding'
wp option delete 'searchcraft_input_border_radius'
wp option delete 'searchcraft_search_icon_color'
wp option delete 'searchcraft_clear_icon_color'
wp option delete 'searchcraft_input_width'
wp option delete 'searchcraft_enable_ai_summary'
wp option delete 'searchcraft_ai_summary_banner'
wp option delete 'searchcraft_include_filter_panel'
wp option delete 'searchcraft_enable_most_recent_toggle'
wp option delete 'searchcraft_enable_exact_match_toggle'
wp option delete 'searchcraft_enable_date_range'
wp option delete 'searchcraft_enable_facets'
wp option delete 'searchcraft_hide_uncategorized'
wp option delete 'searchcraft_facets_collapse_list'
wp option delete 'searchcraft_facets_view_more_threshold'
wp option delete 'searchcraft_enable_post_type_filter'
wp option delete 'searchcraft_filter_panel_order'
wp option delete 'searchcraft_toggle_button_disabled_color'
wp option delete 'searchcraft_filter_label_color'
wp option delete 'searchcraft_results_per_page'
wp option delete 'searchcraft_result_orientation'
wp option delete 'searchcraft_image_alignment'
wp option delete 'searchcraft_display_post_date'
wp option delete 'searchcraft_display_primary_category'
wp option delete 'searchcraft_display_author_name'
wp option delete 'searchcraft_brand_color'
wp option delete 'searchcraft_result_info_text_color'
wp option delete 'searchcraft_summary_background_color'
wp option delete 'searchcraft_summary_border_color'
wp option delete 'searchcraft_summary_title_color'
wp option delete 'searchcraft_summary_text_color'
wp option delete 'searchcraft_summary_box_border_radius'
wp option delete 'searchcraft_custom_css'
wp option delete 'searchcraft_result_template'
wp option delete 'searchcraft_search_input_container_id'
wp option delete 'searchcraft_results_container_id'
wp option delete 'searchcraft_popover_container_id'
wp option delete 'searchcraft_popover_element_behavior'
wp option delete 'searchcraft_retain_get_search_form'
wp option delete 'searchcraft_config'
wp option delete 'searchcraft_search_form_location'

# Delete Transients
wp transient delete 'searchcraft_oldest_post_year'
wp transient delete 'searchcraft_import_notice'
wp transient delete 'searchcraft_index_stats'
wp transient delete 'searchcraft_index'
wp transient delete 'searchcraft_documents'
wp transient delete 'searchcraft_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_searchcraft_publish_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_searchcraft_publish_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_searchcraft_publish_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_searchcraft_publish_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_searchcraft_exclude_from_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_searchcraft_exclude_from_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_searchcraft_exclude_from_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_searchcraft_exclude_from_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_molongui_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_molongui_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_molongui_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_molongui_author'"
