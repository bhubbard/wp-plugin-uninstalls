#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iii_sirdata_cmp_id'
wp option delete 'iii_ga_third_party'
wp option delete 'iii_gtag_tracking_id'
wp option delete 'iii_ga_tracking_id'
wp option delete 'iii_salient_cta_text_01'
wp option delete 'iii_salient_cta_text_02'
wp option delete 'iii_micromodal'
wp option delete 'iii_lead_time_modal_content'
wp option delete 'iii_automatic_modal_content'
wp option delete 'iii_feed_links'
wp option delete 'iii_gtag_third_party'
wp option delete 'iii_ga_cf7_events'
wp option delete 'iii_ga_hs_events'
wp option delete 'iii_modal_nav_menu_link'
wp option delete 'iii_gs_products_database'
wp option delete 'iii_salient_cta_icon_01'
wp option delete 'iii_salient_cta_url_01'
wp option delete 'iii_salient_cta_target_01'
wp option delete 'iii_salient_cta_micromodal_01'
wp option delete 'iii_salient_cta_icon_02'
wp option delete 'iii_salient_cta_url_02'
wp option delete 'iii_salient_cta_target_02'
wp option delete 'iii_salient_cta_micromodal_02'
wp option delete 'iii_salient_cta_exclude'
wp option delete 'iii_modal_title'
wp option delete 'iii_modal_content'
wp option delete 'iii_cmp_third_party'
wp option delete 'iii_sirdata_third_party'
wp option delete 'iii_ga_linker_domains'

# Delete Transients
wp transient delete 'iii_siiimple_updated'
wp transient delete 'iii_siiimple_activated'

