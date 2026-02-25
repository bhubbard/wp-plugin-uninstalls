#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disqus_rcw_api_key'
wp option delete 'disqus_rcw_forum_name'
wp option delete 'disqus_rcw_date_format'
wp option delete 'disqus_rcw_title_wrapper'
wp option delete 'disqus_rcw_which_markup'
wp option delete 'disqus_rcw_disable_caching'
wp option delete 'disqus_rcw_dont_use_css'
wp option delete 'disqus_rcw_settings_do_activation_redirect'

# Delete Transients
wp transient delete 'disqus_rcw_cache'

