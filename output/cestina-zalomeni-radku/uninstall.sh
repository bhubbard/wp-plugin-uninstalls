#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bozimediazalomeni_prepositions'
wp option delete 'bozimediazalomeni_prepositions_list'
wp option delete 'bozimediazalomeni_conjunctions'
wp option delete 'bozimediazalomeni_conjunctions_list'
wp option delete 'bozimediazalomeni_abbreviations'
wp option delete 'bozimediazalomeni_abbreviations_list'
wp option delete 'bozimediazalomeni_between_number_and_unit'
wp option delete 'bozimediazalomeni_between_number_and_unit_list'
wp option delete 'bozimediazalomeni_space_between_numbers'
wp option delete 'bozimediazalomeni_space_after_ordered_number'
wp option delete 'bozimediazalomeni_spaces_in_scales'
wp option delete 'bozimediazalomeni_matches'
wp option delete 'bozimediazalomeni_replacements'
wp option delete 'bozimediazalomeni_acf'
wp option delete 'bozimediazalomeni_matches_empty'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bozimediazalomeni_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_list'"
wp option delete 'bozimediazalomeni_acf_the_content'

