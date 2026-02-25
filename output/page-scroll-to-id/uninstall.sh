#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ps2id_plugin_admin_notice_dismiss_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%instances'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp option delete 'malihu_pagescroll2id_sel'
wp option delete 'malihu_pagescroll2id_scrollSpeed'
wp option delete 'malihu_pagescroll2id_autoScrollSpeed'
wp option delete 'malihu_pagescroll2id_scrollEasing'
wp option delete 'malihu_pagescroll2id_scrollingEasing'
wp option delete 'malihu_pagescroll2id_pageEndSmoothScroll'
wp option delete 'malihu_pagescroll2id_layout'

