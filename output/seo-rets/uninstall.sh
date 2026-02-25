#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sr_logo_image'
wp option delete 'sr_banner_image'
wp option delete 'sr_seodata'
wp option delete 'sr_seodata_list'
wp option delete 'sr_css'
wp option delete 'sr_templates'
wp option delete 'sr_templates_extra'
wp option delete 'sr_templates_list'
wp option delete 'sr_popup'
wp option delete 'sr-plugintext'
wp option delete 'sr_listingsOrder'
wp option delete 'sr_crm'
wp option delete 'sr_boot'
wp option delete 'sr_show_features'
wp option delete 'sr_open_in_new_window'
wp option delete 'sr_use_custom_pagi'
wp option delete 'bootstrap_refine'
wp option delete 'bootstrap_refine_sc'
wp option delete 'sr_fq'
wp option delete 'sr_template'
wp option delete 'sr_leadcapture'
wp option delete 'sr_emailmethod'
wp option delete 'sr_customform'
wp option delete 'sr_unfoundpage'
wp option delete 'sr-mailchimptoken'
wp option delete 'sr-mailchimplist'
wp option delete 'sr_prioritization'
wp option delete 'fbid'
wp option delete 'googleid'
wp option delete 'sr_users'
wp option delete 'sr-shortcode'
wp option delete 'sr_metadata'
wp option delete 'sr_templates_community'
wp option delete 'sr_templates_overview'
wp option delete 'sr_templates_features'
wp option delete 'sr_templates_map'
wp option delete 'sr_templates_video'
wp option delete 'sr_aceEditor'
wp option delete 'sr-map'
wp option delete 'sr_lastsitemap'
wp option delete 'sr_feed'
wp option delete 'srRewDB'
wp option delete 'sr_listingsViewStatistic'
wp option delete 'sr_nonce'
wp option delete 'sr_baseurl'
wp option delete 'sr_cacheoverride'
wp option delete 'my_plugin_version'
wp option delete 'sr_display_update_banner'
wp option delete 'sr_citypage_url_map'
wp option delete 'sr_lastupdated'

# Clear Cron Jobs
wp cron event delete 'sr_purge_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date'"
