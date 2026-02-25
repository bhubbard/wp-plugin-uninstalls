#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acadp_version'
wp option delete 'acadp_general_settings'
wp option delete 'acadp_listings_settings'
wp option delete 'acadp_listing_settings'
wp option delete 'acadp_email_settings'
wp option delete 'acadp_badges_settings'
wp option delete 'acadp_misc_settings'
wp option delete 'acadp_map_settings'
wp option delete 'acadp_privacy_policy'
wp option delete 'acadp_cookie_consent'
wp option delete 'acadp_page_settings'
wp option delete 'acadp_issues'
wp option delete 'acadp_permalink_settings'
wp option delete 'acadp_featured_listing_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'acadp_locations_settings'
wp option delete 'acadp_categories_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'acadp_email_template_listing_renewal'
wp option delete 'acadp_email_template_renewal_reminder'
wp option delete 'rewrite_rules'
wp option delete 'acadp_email_template_listing_submitted'
wp option delete 'acadp_email_template_listing_published'
wp option delete 'acadp_email_template_listing_expired'
wp option delete 'acadp_email_template_order_created'
wp option delete 'acadp_email_template_order_created_offline'
wp option delete 'acadp_email_template_order_completed'
wp option delete 'acadp_email_template_listing_contact'
wp option delete 'acadp_registration_settings'
wp option delete 'acadp_currency_settings'
wp option delete 'acadp_gateway_settings'
wp option delete 'acadp_recaptcha_settings'
wp option delete 'sidebars_widgets'
wp option delete 'acadp_terms_of_agreement'
wp option delete 'acadp_socialshare_settings'
wp option delete 'acadp_gateway_offline_settings'
wp option delete 'acadp_categories_children'
wp option delete 'acadp_locations_children'
wp option delete 'wpseo_titles'
wp option delete 'wpseo_taxonomy_meta'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'acadp_location_coordinates'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'acadp_hourly_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_null'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_null'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_null'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_null'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'associate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'associate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'associate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'associate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'searchable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'searchable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'searchable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'searchable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listings_archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listings_archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listings_archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listings_archive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'never_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'never_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'never_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'never_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_map'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'renewal_reminder_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'renewal_reminder_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'renewal_reminder_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'renewal_reminder_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deletion_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deletion_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deletion_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deletion_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acadp_favourites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acadp_favourites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acadp_favourites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acadp_favourites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
