#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whoowns_default_shareholders_number'
wp option delete 'whoowns_supported_file_types'
wp option delete 'whoowns_cron_frequency'
wp option delete 'whoowns_cron_ref_hour'
wp option delete 'whoowns_table_db_version'
wp option delete 'whoowns_owner_slug'
wp option delete 'whoowns_capabilities'
wp option delete 'whoowns_threshold_show_names_in_network'
wp option delete 'whoowns_threshold_show_arrows_in_network_when_move'
wp option delete 'whoowns_default_related_owners_number'
wp option delete 'whoowns_owners_per_page'
wp option delete 'whoowns_owner_image_size'
wp option delete 'whoowns_currency'
wp option delete 'whoowns_legends_icon_size'
wp option delete 'whoowns_legends_format'
wp option delete 'whoowns_news_search_api'
wp option delete 'whoowns_news_sources'
wp option delete 'whoowns_news_date_format'
wp option delete 'whoowns_reference_owner'
wp option delete 'whoowns_cron_threshold'
wp option delete 'whoowns_relative_share_for_dummy_shareholders'
wp option delete 'whoowns_factsheet_sections'
wp option delete 'whoowns_cron'

# Clear Cron Jobs
wp cron event delete 'whoowns-update'
wp cron event delete 'whoowns-update-network-related-news'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_legal_registration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_legal_registration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_legal_registration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_legal_registration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_dbpedia_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_dbpedia_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_dbpedia_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_dbpedia_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_revenue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_revenue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_revenue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_revenue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_shareholders_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_shareholders_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_shareholders_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_shareholders_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_shareholders_source_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_shareholders_source_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_shareholders_source_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_shareholders_source_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_shareholders_source_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_shareholders_source_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_shareholders_source_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_shareholders_source_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_related_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_related_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_related_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_related_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_controlled_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_controlled_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_controlled_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_controlled_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_controlled_by_final'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_controlled_by_final'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_controlled_by_final'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_controlled_by_final'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_controls_final'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_controls_final'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_controls_final'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_controls_final'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_PA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_PA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_PA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_PA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_is_interchainer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_is_interchainer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_is_interchainer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_is_interchainer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_is_final_controller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_is_final_controller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_is_final_controller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_is_final_controller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_rank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_rank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_rank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_rank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_IPA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_IPA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_IPA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_IPA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whoowns_IPAR'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whoowns_IPAR'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whoowns_IPAR'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whoowns_IPAR'"
