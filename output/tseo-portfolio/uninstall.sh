#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tseoportfolio_gallery_title'
wp option delete 'tseoportfolio_gallery_title_color'
wp option delete 'tseoportfolio_gallery_color'
wp option delete 'tseoportfolio_card_color'
wp option delete 'tseoportfolio_card_border_color'
wp option delete 'tseoportfolio_card_title_color'
wp option delete 'tseoportfolio_card_desc_color'
wp option delete 'tseoportfolio_card_footer_bgcolor'
wp option delete 'tseoportfolio_btn_bgcolor'
wp option delete 'tseoportfolio_btn_textcolor'
wp option delete 'tseoportfolio_btn_hover_bgcolor'
wp option delete 'tseoportfolio_btn_hover_textcolor'
wp option delete 'tseoportfolio_btn_visited_color'
wp option delete 'tseoportfolio_delete_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_web_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_web_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_web_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_web_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_pagespeed_mobile_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_pagespeed_mobile_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_pagespeed_mobile_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_pagespeed_mobile_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_pagespeed_desktop_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_pagespeed_desktop_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_pagespeed_desktop_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_pagespeed_desktop_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_web_link_pingdom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_web_link_pingdom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_web_link_pingdom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_web_link_pingdom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_web_link_gtmetrix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_web_link_gtmetrix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_web_link_gtmetrix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_web_link_gtmetrix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_web_link_richresults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_web_link_richresults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_web_link_richresults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_web_link_richresults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tseoportfolio_display_in_grid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tseoportfolio_display_in_grid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tseoportfolio_display_in_grid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tseoportfolio_display_in_grid'"
