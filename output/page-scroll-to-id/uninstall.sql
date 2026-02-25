-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps2id_plugin_admin_notice_dismiss_notice', 'malihu_pagescroll2id_sel', 'malihu_pagescroll2id_scrollSpeed', 'malihu_pagescroll2id_autoScrollSpeed', 'malihu_pagescroll2id_scrollEasing', 'malihu_pagescroll2id_scrollingEasing', 'malihu_pagescroll2id_pageEndSmoothScroll', 'malihu_pagescroll2id_layout');
DELETE FROM wp_options WHERE option_name LIKE '%instances';
DELETE FROM wp_options WHERE option_name LIKE '%version';

