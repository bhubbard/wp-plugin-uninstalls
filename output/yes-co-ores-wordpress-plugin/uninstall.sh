#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-last-sync-read-main-collection'"
wp option delete 'yog_3mcp_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-last-sync-error-main-feed'"
wp option delete 'yog-sync-running'
wp option delete 'yog_noextratexts'
wp option delete 'yog_englishtext'
wp option delete 'yog_cat_custom'
wp option delete 'yog_sync_disabled'
wp option delete 'yog-last-sync'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-last-sync'"
wp option delete 'yog_nochilds_searchresults'
wp option delete 'yog_search_bog_rentalprice_type'
wp option delete 'yog_javascript_dojo_dont_enqueue'
wp option delete 'yog_google_maps_api_key'
wp option delete 'yog_mijnhuiszaken_api_key'
wp option delete 'yog_show_og'
wp option delete 'yog_objectsinarchief'
wp option delete 'yog_huizenophome'
wp option delete 'yog_order'
wp option delete 'yog_plugin_version'
wp option delete 'yog_media_size'
wp option delete 'yog_response_forms_api_key'
wp option delete 'yog_map_type'
wp option delete 'yog_custom_areas'
wp option delete 'yog_custom_neighbourhoods'
wp option delete 'yog_no_delete_meta_keys'
wp option delete 'yog_skipped_relation_uuids'
wp option delete 'yog_media_quality'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-last-sync-result'"
wp option delete 'yog_relation_sync'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-last-sync-sync-project'"
wp option delete 'yog_dossier_mimetypes'
wp option delete 'yog_koppelingen'
wp option delete 'yog_html_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yog-marker-type-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Clear Cron Jobs
wp cron event delete 'yog_cron_open_houses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'huis_OpenHuisTot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'huis_OpenHuisTot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'huis_OpenHuisTot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'huis_OpenHuisTot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_WijkCustom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_WijkCustom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_WijkCustom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_WijkCustom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_BuurtCustom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_BuurtCustom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_BuurtCustom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_BuurtCustom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yog_price_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yog_price_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yog_price_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yog_price_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yog_city_street_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yog_city_street_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yog_city_street_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yog_city_street_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuurPrijsConditie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuurPrijsConditie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuurPrijsConditie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuurPrijsConditie'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuurPrijsPerJaar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuurPrijsPerJaar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuurPrijsPerJaar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuurPrijsPerJaar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuurPrijsMinPerJaar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuurPrijsMinPerJaar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuurPrijsMinPerJaar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuurPrijsMinPerJaar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuurPrijsMaxPerJaar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuurPrijsMaxPerJaar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuurPrijsMaxPerJaar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuurPrijsMaxPerJaar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuurPrijs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuurPrijs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuurPrijs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuurPrijs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuurPrijsMin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuurPrijsMin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuurPrijsMin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuurPrijsMin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuurPrijsMax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuurPrijsMax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuurPrijsMax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuurPrijsMax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Oppervlakte'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Oppervlakte'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Oppervlakte'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Oppervlakte'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_nodelete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_nodelete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_nodelete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_nodelete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_versie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_versie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_versie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_versie'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Relaties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Relaties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Relaties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Relaties'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yog_post_dlm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yog_post_dlm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yog_post_dlm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yog_post_dlm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dlm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dlm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dlm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dlm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Videos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Videos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Videos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Videos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Documenten'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Documenten'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Documenten'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Documenten'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_OpenHuisVan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_OpenHuisVan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_OpenHuisVan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_OpenHuisVan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_OpenHuisTot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_OpenHuisTot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_OpenHuisTot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_OpenHuisTot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_DatumVoorbehoudTot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_DatumVoorbehoudTot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_DatumVoorbehoudTot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_DatumVoorbehoudTot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bedrijf_HuurPrijs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bedrijf_HuurPrijs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bedrijf_HuurPrijs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bedrijf_HuurPrijs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuisnummerNumeriek'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuisnummerNumeriek'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuisnummerNumeriek'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuisnummerNumeriek'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_HuisnummerToevoeging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_HuisnummerToevoeging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_HuisnummerToevoeging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_HuisnummerToevoeging'"
