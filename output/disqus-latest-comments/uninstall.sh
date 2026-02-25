#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disqus_shortname'
wp option delete 'disqus_shortname_old'
wp option delete 'num_items'
wp option delete 'num_items_old'
wp option delete 'hide_avatars'
wp option delete 'hide_avatars_old'
wp option delete 'hide_moderator'
wp option delete 'hide_moderator_old'
wp option delete 'avatar_size'
wp option delete 'avatar_size_old'
wp option delete 'excerpt_length'
wp option delete 'excerpt_length_old'
wp option delete 'style'
wp option delete 'style_old'
wp option delete 'disqus_custom_css'
wp option delete 'disqus_custom_css_old'
wp option delete 'bypass_cache'
wp option delete 'bypass_cache_old'
wp option delete 'disqus_target_blank'
wp option delete 'disqus_target_blank_old'
wp option delete 'itsg_disqus_lastest_comments_addon_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_itsg_dlc_cache_%' OR option_name LIKE '_site_transient_itsg_dlc_cache_%'"

