#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crowdfundly_activate_redirect'
wp option delete 'crowdfundly_organization_page_id'
wp option delete 'crowdfundly_all_campaigns_page_id'
wp option delete 'crowdfundly_single_campaign_page_id'
wp option delete 'crowdfundly_intro_notice'
wp option delete 'crowdfundly_url_update'
wp option delete 'crowdfundly_settings'
wp option delete 'auth_meta'
wp option delete 'links_updated_date_format'
wp option delete 'crowdfundly_update_v208'

# Delete Transients
wp transient delete 'crowdfundly_api_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdfundly_organization_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdfundly_organization_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdfundly_organization_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdfundly_organization_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdfundly_all_campaigns_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdfundly_all_campaigns_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdfundly_all_campaigns_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdfundly_all_campaigns_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdfundly_single_campaign_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdfundly_single_campaign_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdfundly_single_campaign_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdfundly_single_campaign_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
