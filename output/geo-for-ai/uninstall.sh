#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geoforai_home_description'
wp option delete 'geoforai_home_topics'
wp option delete 'geoforai_llms_training'
wp option delete 'geoforai_llms_scraping'
wp option delete 'geoforai_business_name'
wp option delete 'geoforai_business_address1'
wp option delete 'geoforai_business_postcode'
wp option delete 'geoforai_business_city'
wp option delete 'geoforai_business_country'
wp option delete 'geoforai_business_phone'
wp option delete 'geoforai_business_email'
wp option delete 'geoforai_business_url'
wp option delete 'geoforai_business_logo'
wp option delete 'geoforai_business_hours'
wp option delete 'geoforai_business_lat'
wp option delete 'geoforai_business_lng'
wp option delete 'geoforai_ai_datause'
wp option delete 'geoforai_ai_imagetraining'
wp option delete 'geoforai_ai_texttraining'
wp option delete 'geoforai_ai_voicetraining'
wp option delete 'geoforai_ai_attribution'
wp option delete 'geoforai_jsonld_article'
wp option delete 'geoforai_jsonld_product'

# Delete Transients
wp transient delete 'geoforai_audit_results'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_geoforai_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_geoforai_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_geoforai_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_geoforai_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_geoforai_topics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_geoforai_topics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_geoforai_topics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_geoforai_topics'"
