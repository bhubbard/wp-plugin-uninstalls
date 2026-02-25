-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bslider_effects', 'bslider_height', 'bslider_width', 'bslider_caption_visible', 'bslider_caption_left', 'bslider_caption_right', 'bslider_caption_bottom', 'bslider_paginate', 'bslider_paginate_pos', 'bslider_pause_time', 'bslider_interval', 'bslider_supdate', 'bslider_caption_top', ' bslider_width', ' bslider_height', ' bslider_caption_visible', ' bslider_caption_left', ' bslider_caption_right', ' bslider_caption_top', ' bslider_caption_bottom', ' bslider_paginate', ' bslider_pause_time', ' bslider_interval', ' bslider_supdate', ' bslider_effects');

