#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WAA_location'
wp option delete 'WAA_partnerID'
wp option delete 'WAA_priceIndicatorPage'
wp option delete 'WAA_backgroundColorPage'
wp option delete 'WAA_borderColorPage'
wp option delete 'WAA_textColorPage'
wp option delete 'WAA_linkColorPage'
wp option delete 'WAA_targetPage'
wp option delete 'WAA_imageSizePage'
wp option delete 'WAA_priceIndicatorSidebar'
wp option delete 'WAA_backgroundColorSidebar'
wp option delete 'WAA_borderColorSidebar'
wp option delete 'WAA_textColorSidebar'
wp option delete 'WAA_linkColorSidebar'
wp option delete 'WAA_targetSidebar'
wp option delete 'WAA_imageSizeSidebar'
wp option delete 'WAA_pictureTarget'
wp option delete 'WELAmazonAdds_partnerID'
wp option delete 'widget_waa-link'

