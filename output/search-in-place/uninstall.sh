#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'search_in_place_own_only'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'CPSPAutocomplete'
wp option delete 'search_in_place_number_of_posts'
wp option delete 'search_in_place_more_results_text'
wp option delete 'search_in_place_minimum_char_number'
wp option delete 'search_in_place_summary_char_number'
wp option delete 'search_in_place_connection_operator'
wp option delete 'search_in_place_highlight_resulting_page'
wp option delete 'search_in_place_highlight_colors'
wp option delete 'search_in_place_selectors'
wp option delete 'search_in_place_initial_search_box_design'
wp option delete 'search_in_place_display_author'
wp option delete 'search_in_place_display_thumbnail'
wp option delete 'search_in_place_display_summary'
wp option delete 'search_in_place_display_date'
wp option delete 'search_in_place_date_format'
wp option delete 'search_in_place_box_background_color'
wp option delete 'search_in_place_box_border_color'
wp option delete 'search_in_place_label_text_color'
wp option delete 'search_in_place_label_text_shadow'
wp option delete 'search_in_place_label_background_start_color'
wp option delete 'search_in_place_label_background_end_color'
wp option delete 'search_in_place_active_item_background_color'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

