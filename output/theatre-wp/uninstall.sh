#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twp_tickets_info'
wp option delete 'twp_widget_performances_number'
wp option delete 'twp_performances_number'
wp option delete 'twp_google_maps_api'
wp option delete 'twp_spectacle_slug'
wp option delete 'twp_spectacles_slug'
wp option delete 'twp_performance_slug'
wp option delete 'twp_performances_slug'
wp option delete 'twp_spectacle_name'
wp option delete 'twp_spectacles_name'
wp option delete 'twp_performance_name'
wp option delete 'twp_performances_name'
wp option delete 'twp_spectacles_number'
wp option delete 'twp_single_sponsor'
wp option delete 'twp_clean_on_uninstall'
wp option delete 'twp_widget_spectacles_number'
wp option delete 'twp_widget_spectacles_sortby'
wp option delete 'twp_widget_spectacles_sort'
wp option delete 'twp_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%synopsis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%synopsis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%synopsis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%synopsis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%audience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%audience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%audience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%audience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%credits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%credits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%credits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%credits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%sheet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%sheet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%sheet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sheet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%prod-sponsor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%prod-sponsor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%prod-sponsor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%prod-sponsor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%spectacle_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%spectacle_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%spectacle_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%spectacle_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_first'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_first'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_first'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_first'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%place'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%place'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%place'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%place'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%postal_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%postal_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%postal_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%postal_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%town'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%town'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%town'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%town'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_map'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%tickets_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%tickets_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%tickets_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tickets_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%tickets_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%tickets_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%tickets_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tickets_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%free_entrance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%free_entrance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%free_entrance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%free_entrance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%sponsor-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%sponsor-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%sponsor-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sponsor-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%sponsor-weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%sponsor-weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%sponsor-weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sponsor-weight'"
