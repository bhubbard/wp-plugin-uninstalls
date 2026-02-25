#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cloogooq_%'"
wp option delete 'cloogooq_user_min_hits_key'
wp option delete 'cloogooq_user_min_hits_phr'
wp option delete 'cloogooq_user_min_char'
wp option delete 'cloogooq_user_include_numbers'
wp option delete 'cloogooq_user_exclude_numbers'
wp option delete 'cloogooq_user_min_font_size'
wp option delete 'cloogooq_user_min_font_color'
wp option delete 'cloogooq_user_max_number_of_items'
wp option delete 'cloogooq_user_max_font_size'
wp option delete 'cloogooq_user_max_font_color'
wp option delete 'cloogooq_user_perc_line_height'
wp option delete 'cloogooq_user_separator'
wp option delete 'cloogooq_user_sep_space_prior'
wp option delete 'cloogooq_user_sep_space_after'
wp option delete 'cloogooq_user_exclude_domain'
wp option delete 'cloogooq_user_exclude'
wp option delete 'cloogooq_user_include'
wp option delete 'cloogooq_user_table_name'
wp option delete 'cloogooq_user_table_key'
wp option delete 'cloogooq_user_include_local_search'
wp option delete 'cloogooq_user_table_name_local'
wp option delete 'cloogooq_user_table_key_local'
wp option delete 'cloogooq_user_querykeys'
wp option delete 'cloogooq_user_link_to'
wp option delete 'cloogooq_user_sort'
wp option delete 'cloogooq_user_scaling'
wp option delete 'cloogooq_user_limit'
wp option delete 'cloogooq_user_table_id'

