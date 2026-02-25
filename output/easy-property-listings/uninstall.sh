#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epl_rewrite_rules'
wp option delete 'epl_db_upgraded_to'
wp option delete 'epl_settings'
wp option delete 'epl_settings_backup'
wp option delete 'epl_updated_global_price'
wp option delete 'epl_version_upgraded_from'
wp option delete 'epl_license'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp option delete 'epl_use_php_sessions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'epl_version'
wp option delete '_wp_session_list'
wp option delete 'epl_enable_import_geocode'
wp option delete 'epl_contact_tag_bg'

# Delete Transients
wp transient delete 'epl_admin_notices_display'
wp transient delete 'epl_contributors'
wp transient delete '_epl_activation_redirect'
wp transient delete 'easypropertylistings_add_ons_feed'
wp transient delete 'update_plugins'
wp transient delete 'epl_license_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_active' OR option_name LIKE '_site_transient_%_license_active'"
wp transient delete '_epl_validate_license'
wp transient delete '_epl_activation_pages'

# Clear Cron Jobs
wp cron event delete 'epl_weekly_scheduled_events'
wp cron event delete 'epl_daily_scheduled_events'
wp cron event delete 'wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_rent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_rent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_rent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_rent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_price_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_price_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_price_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_price_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_com_rent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_com_rent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_com_rent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_com_rent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%selection_made'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%selection_made'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%selection_made'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%selection_made'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%enabled_thumbs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%enabled_thumbs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%enabled_thumbs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enabled_thumbs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_floorplan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_floorplan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_floorplan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_floorplan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_floorplan_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_floorplan_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_floorplan_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_floorplan_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_interested_listings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_interested_listings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_interested_listings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_interested_listings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epl_interested_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epl_interested_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epl_interested_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epl_interested_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epl_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epl_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epl_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epl_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_inspection_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_inspection_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_inspection_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_inspection_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_sub_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_sub_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_sub_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_sub_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_street_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_street_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_street_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_street_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_suburb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_suburb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_suburb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_suburb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_postal_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_postal_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_postal_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_postal_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_hide_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_hide_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_hide_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_hide_map'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_agent_hide_author_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_agent_hide_author_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_agent_hide_author_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_agent_hide_author_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_com_listing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_com_listing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_com_listing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_com_listing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_bg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_bg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_bg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_bg'"
