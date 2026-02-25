#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kw_pefinder_list_sorting_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_andere'"
wp option delete 'kw_pefinder_api_key'
wp option delete 'kw_pefinder_customer_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Bilder'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Allgemein'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Beschreibung'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Paten'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Patenschaftsbedarf'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Vermittlungskontakt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Patenschaftskontakt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Teilen'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_badges'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_badge_junior'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_badge_senior'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_badge_emergency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_badge_handicap'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_badge_sponsor'"
wp option delete 'kw_pefinder_external_contact_url_saved_species'
wp option delete 'kw_pefinder_external_contact_url'
wp option delete 'kw_pefinder_scroll_offset'
wp option delete 'kw_pefinder_external_sponsor_contact_url'
wp option delete 'kw_pefinder_contact_only_loggedin'
wp option delete 'kw_pefinder_share_activate'
wp option delete 'kw_pefinder_share_platforms'
wp option delete 'kw_pefinder_hide_internal_nr'
wp option delete 'kw_pefinder_show_badge_junior'
wp option delete 'kw_pefinder_show_badge_senior'
wp option delete 'kw_pefinder_show_badge_emergency'
wp option delete 'kw_pefinder_show_badge_handicap'
wp option delete 'kw_pefinder_show_badge_sponsor'
wp option delete 'kw_pefinder_show_searching_sponsors'
wp option delete 'kw_pefinder_sponsors_list_one_line'
wp option delete 'kw_pefinder_sponsors_list_show_adopted'
wp option delete 'kw_pefinder_sponsors_list_filter_covered'
wp option delete 'kw_pefinder_sponsors_list_show_city'
wp option delete 'kw_pefinder_hide_serial_nr'
wp option delete 'kw_pefinder_share_title'
wp option delete 'kw_pefinder_delete_data_on_deinstallation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%customer_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%contact_only_loggedin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%delete_data_on_deinstallation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scroll_offset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%external_contact_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%external_sponsor_contact_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%share_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%share_activate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%share_platforms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_column'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_order'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_column_vermittelt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_order_vermittelt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_column_fremdvermittlung'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_order_fremdvermittlung'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_column_verstorben'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_order_verstorben'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_column_patengesuch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_order_patengesuch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_column_patengedeckt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_order_patengedeckt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_column_andere'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_sorting_order_andere'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_internal_nr'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_serial_nr'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_searching_sponsors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sponsors_list_one_line'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sponsors_list_show_adopted'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sponsors_list_filter_covered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sponsors_list_show_city'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%external_contact_url_saved_species'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kw_pefinder_list_sorting_column%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kw_pefinder_list_sorting_order%'"

