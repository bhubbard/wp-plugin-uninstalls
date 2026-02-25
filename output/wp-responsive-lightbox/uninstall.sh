#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dd_lightbox_ads_visiblity'
wp option delete 'dd_lightbox_ads_custom_url'
wp option delete 'dd_lightbox_ads_imgurl'
wp option delete 'dd_lightbox_ads_link'
wp option delete 'dd_lightbox_ads_lbbg'
wp option delete 'dd_lightbox_ads_delay'
wp option delete 'dd_lightbox_ads_width'
wp option delete 'dd_lightbox_setting_allowfooter'
wp option delete 'dd_lightbox_setting_footertext'
wp option delete 'dd_lightbox_ads_display_type'

