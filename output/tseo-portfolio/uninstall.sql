-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tseoportfolio_gallery_title', 'tseoportfolio_gallery_title_color', 'tseoportfolio_gallery_color', 'tseoportfolio_card_color', 'tseoportfolio_card_border_color', 'tseoportfolio_card_title_color', 'tseoportfolio_card_desc_color', 'tseoportfolio_card_footer_bgcolor', 'tseoportfolio_btn_bgcolor', 'tseoportfolio_btn_textcolor', 'tseoportfolio_btn_hover_bgcolor', 'tseoportfolio_btn_hover_textcolor', 'tseoportfolio_btn_visited_color', 'tseoportfolio_delete_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tseoportfolio_description', '_tseoportfolio_web_link', '_tseoportfolio_pagespeed_mobile_link', '_tseoportfolio_pagespeed_desktop_link', '_tseoportfolio_web_link_pingdom', '_tseoportfolio_web_link_gtmetrix', '_tseoportfolio_web_link_richresults', '_tseoportfolio_order', '_tseoportfolio_display_in_grid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tseoportfolio_description', '_tseoportfolio_web_link', '_tseoportfolio_pagespeed_mobile_link', '_tseoportfolio_pagespeed_desktop_link', '_tseoportfolio_web_link_pingdom', '_tseoportfolio_web_link_gtmetrix', '_tseoportfolio_web_link_richresults', '_tseoportfolio_order', '_tseoportfolio_display_in_grid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tseoportfolio_description', '_tseoportfolio_web_link', '_tseoportfolio_pagespeed_mobile_link', '_tseoportfolio_pagespeed_desktop_link', '_tseoportfolio_web_link_pingdom', '_tseoportfolio_web_link_gtmetrix', '_tseoportfolio_web_link_richresults', '_tseoportfolio_order', '_tseoportfolio_display_in_grid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tseoportfolio_description', '_tseoportfolio_web_link', '_tseoportfolio_pagespeed_mobile_link', '_tseoportfolio_pagespeed_desktop_link', '_tseoportfolio_web_link_pingdom', '_tseoportfolio_web_link_gtmetrix', '_tseoportfolio_web_link_richresults', '_tseoportfolio_order', '_tseoportfolio_display_in_grid');

