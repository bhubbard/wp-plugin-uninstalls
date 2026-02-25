#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_impress_agents_settings'
wp option delete 'plugin_wp_listings_settings'
wp option delete 'wp_listings_import_progress'
wp option delete 'impress_listings_import_fail_list'
wp option delete 'wp_listings_idx_featured_listing_wp_options'
wp option delete 'wp_listings_advanced_field_display_options'
wp option delete 'idx_broker_apikey'
wp option delete 'wp_listings_taxonomies'
wp option delete 'wp_listings_google_my_business_options'
wp option delete 'widget_wplistings-featured-listings'
wp option delete 'widget_listings-search'
wp option delete 'idx_broker_social_pro_enabled'
wp option delete 'idx_omnibar_current_city_list'
wp option delete 'idx_omnibar_current_county_list'
wp option delete 'idx_omnibar_current_zipcode_list'
wp option delete 'idx_omnibar_placeholder'
wp option delete 'idx_omnibar_sort'
wp option delete 'idx_omnibar_city_lists'
wp option delete 'idx_omnibar_county_lists'
wp option delete 'idx_omnibar_zipcode_lists'
wp option delete 'idx_omnibar_custom_fields'
wp option delete 'idx_default_property_types'
wp option delete 'idx_broker_omnibar_address_mls'
wp option delete 'idx_broker_dev_partner_key'
wp option delete 'idx_recaptcha_enabled'
wp option delete 'idx_cron_schedule'
wp option delete 'idx_broker_dynamic_wrapper_page_name'
wp option delete 'impress_data_optout'
wp option delete 'idx_broker_social_pro_settings'
wp option delete 'idx_migrated_old_table'
wp option delete 'idx_added_uid_to_idx_pages'
wp option delete 'idx_broker_dynamic_wrapper_page_id'
wp option delete 'idx_api_limit_exceeded'
wp option delete 'idx_broker_widget_data_restriction'
wp option delete 'idx_add_uid_to_idx_pages'
wp option delete 'idx_plugin_version'
wp option delete 'impress_data_sent'
wp option delete 'wpseo_titles'
wp option delete 'idx_recaptcha_site_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache'"
wp option delete 'impress_multisite_settings'
wp option delete 'idx_clients_savedlinks_cache'
wp option delete 'idx_results_url'
wp option delete 'idx_broker_autocomplete_values_version'
wp option delete 'idx_broker_listings_enabled'
wp option delete 'idx_broker_agents_enabled'
wp option delete 'idx_dismiss_review_prompt'
wp option delete 'idx_review_prompt_time'

# Delete Transients
wp transient delete 'wp_listings_google_my_business_auth_cache'
wp transient delete 'wp_listings_google_my_business_account_cache'
wp transient delete 'wp_listings_google_my_business_location_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wp_background-processing-agents_process_lock'
wp transient delete 'wp_background-processing-listings_process_lock'
wp transient delete 'idx_leads_cache'
wp transient delete 'idx_leads'

# Clear Cron Jobs
wp cron event delete 'impress_agents_idx_update'
wp cron event delete 'wp_listings_idx_update'
wp cron event delete 'wp_listings_idx_auto_import'
wp cron event delete 'wp_listings_gmb_auto_post'
wp cron event delete 'idx_update_location_data'
wp cron event delete 'idx_omnibar_get_locations'
wp cron event delete 'idx_create_idx_pages'
wp cron event delete 'idx_delete_idx_pages'
wp cron event delete 'idx_add_uid_to_idx_pages'
wp cron event delete 'idx_migrate_old_table'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'impa_term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'impa_term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'impa_term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'impa_term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_designations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_designations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_designations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_designations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_googleplus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_googleplus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_googleplus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_googleplus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_employee_instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_employee_instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_employee_instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_employee_instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_bedrooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_bedrooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_bedrooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_bedrooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_bathrooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_bathrooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_bathrooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_bathrooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_open_house'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_open_house'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_open_house'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_open_house'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_sqft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_sqft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_sqft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_sqft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_lot_sqft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_lot_sqft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_lot_sqft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_lot_sqft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_acres'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_acres'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_acres'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_acres'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_county'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_county'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_county'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_county'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_subdivision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_subdivision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_subdivision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_subdivision'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_mls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_mls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_mls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_mls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_year_built'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_year_built'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_year_built'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_year_built'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_half_bath'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_half_bath'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_half_bath'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_half_bath'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advanced_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advanced_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advanced_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advanced_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_disclaimer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_disclaimer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_disclaimer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_disclaimer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_disclaimer_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_disclaimer_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_disclaimer_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_disclaimer_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_courtesy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_courtesy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_courtesy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_courtesy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_courtesy_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_courtesy_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_courtesy_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_courtesy_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_post_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_post_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_post_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_post_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpl_term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpl_term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpl_term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpl_term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_hide_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_price_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_price_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_price_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_price_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_school_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_school_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_school_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_school_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_map'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_automap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_automap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_automap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_automap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_featured_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_featured_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_featured_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_featured_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_details_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_details_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_details_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_details_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_home_sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_home_sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_home_sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_home_sum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_kitchen_sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_kitchen_sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_kitchen_sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_kitchen_sum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_living_room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_living_room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_living_room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_living_room'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_master_suite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_master_suite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_master_suite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_master_suite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_contact_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_contact_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_contact_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_contact_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_listing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_listing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_listing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_listing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idx_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idx_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idx_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idx_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idx_user_first_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idx_user_first_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idx_user_first_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idx_user_first_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idx-wrapper-page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idx-wrapper-page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idx-wrapper-page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idx-wrapper-page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_syndicated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_syndicated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_syndicated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_syndicated'"
