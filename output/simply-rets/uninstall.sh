#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sr_api_name'
wp option delete 'sr_api_key'
wp option delete 'sr_contact_page'
wp option delete 'sr_show_listingmeta'
wp option delete 'sr_show_listing_remarks'
wp option delete 'sr_show_agent_contact'
wp option delete 'sr_listing_gallery'
wp option delete 'sr_show_leadcapture'
wp option delete 'sr_leadcapture_recipient'
wp option delete 'sr_additional_rooms'
wp option delete 'sr_listhub_analytics'
wp option delete 'sr_listhub_analytics_id'
wp option delete 'sr_listhub_analytics_test_events'
wp option delete 'sr_search_map_position'
wp option delete 'sr_permalink_structure'
wp option delete 'sr_google_api_key'
wp option delete 'sr_office_on_thumbnails'
wp option delete 'sr_agent_on_thumbnails'
wp option delete 'sr_thumbnail_idx_image'
wp option delete 'sr_show_mls_status_text'
wp option delete 'sr_agent_office_above_the_fold'
wp option delete 'sr_show_mls_trademark_symbol'
wp option delete 'sr_disable_listing_details_map'
wp option delete 'sr_default_idx_filter'
wp option delete 'sr_idx_address_display_text'
wp option delete 'sr_date_default_timezone'
wp option delete 'sr_listing_force_image_https'
wp option delete 'sr_leadcapture_custom_form'
wp option delete 'sr_custom_disclaimer'
wp option delete 'sr_custom_no_results_message'
wp option delete 'sr_demo_page_created'
wp option delete 'sr_show_admin_message'
wp option delete 'sr_adv_search_meta_vendors'
wp option delete 'sr_adv_search_meta_endpoints'
wp option delete 'sr_adv_search_meta_timestamp'
wp option delete 'rewrite_rules'

# Clear Cron Jobs
wp cron event delete 'sr_update_adv_search_options_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sr_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sr_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sr_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sr_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sr_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sr_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sr_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sr_page_template'"
